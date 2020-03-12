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
source=("https://${url}/releases/download/v${pkgver}-rc3/lokinet-linux-x64-v${pkgver}-50514d55b.tar.xz" "lokinet.service" "LICENSE")
sha256sums=("SKIP" "SKIP" "SKIP")
validpgpkeys=()

package() {
	cd "${srcdir}/lokinet-linux-x64-v${pkgver}-50514d55b/"
	mkdir -p ${pkgdir}/usr/bin/
	cp lokinet ${pkgdir}/usr/bin/
	cp lokinetctl ${pkgdir}/usr/bin/
	cp lokinet-bootstrap ${pkgdir}/usr/bin/
	mkdir -p "$pkgdir/usr/lib/systemd/system/"
	cp ${srcdir}/lokinet.service "$pkgdir/usr/lib/systemd/system/"
	setcap cap_net_admin,cap_net_bind_service=+eip "$pkgdir/usr/bin/lokinet"
}
