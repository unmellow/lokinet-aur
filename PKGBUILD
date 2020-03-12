# This is an example PKGBUILD file. Use this as a start to creating your own,
# and remove these comments. For more information, see 'man PKGBUILD'.
# NOTE: Please fill out the license field for your package! If it is unknown,
# then please put 'unknown'.

# Maintainer: Your Name <Amazingminecrafter2015@gmail.com>
pkgname=loki-network
pkgver=0.7.0
pkgrel=1
pkgdesc="Lokinet is an anonymous, decentralized and IP based overlay network for the internet."
arch=(x86_64)
url="github.com/loki-project/loki-network"
license=('custom')
depends=('systemd' 'curl' 'libsodium>=1.0.17' 'libuv')
makedepends=( 'make' 'gcc' )
provides=(loki-network)
source=("${pkgname}-${pkgver}.tar.gz::https://${url}/archive/v${pkgver}.tar.gz" "lokinet.service" "LICENSE")
sha256sums=("SKIP" "SKIP" "DKIP")
validpgpkeys=()

build() {
        cd "$pkgname"	
        make
}

package() {
	cd "${srcdir}/${pkgname}-${pkgver}"
	make DESTDIR="$pkgdir/" install
	mkdir -p "$pkgdir/usr/lib/systemd/system/"
	cp debian.lokinet.service "$pkgdir/usr/lib/systemd/system/"
	setcap cap_net_admin,cap_net_bind_service=+eip "$pkgdir/usr/local/bin/lokinet"
	# LICENSE
        install -Dm 644 LICENSE "${pkgdir}/usr/share/licenses/${pkgname}/LICENSE"
}
