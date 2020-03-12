# This is an example PKGBUILD file. Use this as a start to creating your own,
# and remove these comments. For more information, see 'man PKGBUILD'.
# NOTE: Please fill out the license field for your package! If it is unknown,
# then please put 'unknown'.

# Maintainer: Your Name <Amazingminecrafter2015@gmail.com>
_tag=v0.7.0-rc3
pkgname=loki-network
pkgver=0.7.0rc3
pkgrel=1
pkgdesc="Lokinet is an anonymous, decentralized and IP based overlay network for the internet."
arch=(x86_64)
url="github.com/loki-project/loki-network"
license=('custom')
depends=("systemd" "curl" "libuv")
makedepends=("cxxopts" "make" "gcc" "libsodium>=1.0.18")
provides=(loki-network)
source=("https://i2p.rocks/files/lokinet/archives/${pkgver}-rc3/lokinet-${_tag}.tar.xz" "https://i2p.rocks/files/lokinet/archives/0.7.0-rc3/lokinet-v0.7.0-rc3.tar.xz.sig")
sha256sums=( "SKIP" "SKIP")
validpgpkeys=("67EF6BA68E7B0B0D6EB4F7D4F357B3B42F6F9B05")

build() {
	cd "${srcdir}/lokinet-${_tag}"
	cmake -DCMAKE_INSTALL_PREFIX=/usr -DNATIVE_BUILD=OFF -DWITH_SHARED=ON -DSUBMODULE_CHECK=OFF -B build
        make -C build 
}

package() {
	cd "${srcdir}/lokinet-${_tag}" 
	make DESTDIR="$pkgdir/" install
	mkdir -p "$pkgdir/usr/share/licenses/$pkgname"
	cp LICENSE "$pkgdir/usr/share/licenses/$pkgname"
	mkdir -p "$pkgdir/usr/lib/systemd/system/"
	cp debian/lokinet.service "$pkgdir/usr/lib/systemd/system/"
}
