# Maintainer: Your Name <Amazingminecrafter2015@gmail.com>
_tag=v0.7.0-rc3
pkgname=loki-network
pkgver=0.7.0rc3
pkgrel=1
pkgdesc="Lokinet is an anonymous, decentralized and IP based overlay network for the internet."
arch=(x86_64)
url="github.com/loki-project/loki-network"
license=('custom')
depends=("systemd" "curl" "libuv" "libsodium>=1.0.18")
makedepends=("cxxopts" "make" "gcc" )
provides=(loki-network)
source=("https://i2p.rocks/files/lokinet/archives/0.7.0-rc3/lokinet-${_tag}.tar.xz" 
	"https://i2p.rocks/files/lokinet/archives/0.7.0-rc3/lokinet-v0.7.0-rc3.tar.xz.sig"
	"lokinet.service")
sha256sums=( "ad46e8d47d2295e33e4cd90557ad2e8fc9a5275c5e0e5193ec5f8298b768c5e2" 
	"4df568eba056e2cc64a5c81f9dde757657f9351b276b219b4b720b79a899e515" 
	"3bff0c487b34fc98b95daece674ea50ab2bc696a46d41290ba00839803a68830")
install="${pkgname}.install"
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
	cp ${srcdir}/lokinet.service "$pkgdir/usr/lib/systemd/system/" 
	mkdir -p ${pkgdir}/var/lib/lokinet
}
