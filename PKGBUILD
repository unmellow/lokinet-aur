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
depends=("systemd" "curl" "libsodium>=1.0.17" "libuv")
makedepends=( "make" "gcc" "libsodium>=1.0.18")
provides=(loki-network)
source=("https://i2p.rocks/files/lokinet/archives/${pkgver}-rc3/lokinet-v${pkgver}-rc3.tar.xz" "lokinet.service" "LICENSE")
sha256sums=( "SKIP" "SKIP" "SKIP")
validpgpkeys=("")

build() {
	cd "${srcdir}/lokinet-v${pkgver}-rc3"
	make
}

package() {
	cd "${srcdir}/lokinet-v${pkgver}-rc3"
	make DESTDIR="$pkgdir/usr" install
	mkdir -p ${pkgdir}/usr/lib/systemd/system/
	cp ${srcdir}/lokinet.service ${pkgdir}/usr/lib/systemd/system/
	mkdir -p ${pkgdir}/usr/share/licenses/loki-network/
	cp ${srcdir}/LICENSE ${pkgdir}/usr/share/licenses/loki-network/
}
