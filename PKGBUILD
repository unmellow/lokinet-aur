# Maintainer: Your Name <Amazingminecrafter2015@gmail.com>
_tag=v0.7.0-rc3
pkgname=loki-network
pkgver=0.7.0rc3
pkgrel=1
pkgdesc="an anonymous, decentralized and IP based overlay network for the internet."
arch=(x86_64)
url="https://github.com/loki-project/loki-network"
license=('custom')
depends=("curl" "libuv" "libsodium>=1.0.18")
makedepends=("cmake")
source=("https://i2p.rocks/files/lokinet/archives/0.7.0-rc3/lokinet-${_tag}.tar.xz" 
	"https://i2p.rocks/files/lokinet/archives/0.7.0-rc3/lokinet-v0.7.0-rc3.tar.xz.sig"
	"lokinet.service"
	"lokinet.conf")
sha256sums=('ad46e8d47d2295e33e4cd90557ad2e8fc9a5275c5e0e5193ec5f8298b768c5e2'
            'SKIP'
            '9e6c324538c1e8a72713a9d352f7a00c7f4091f4c82277f6ea8a6a900c65962a'
            '49d6be3cbc32bf2414eefa86dbcead1d692e4ed8c4f66a09d740bb750c204354')
install=loki-network.install
validpgpkeys=("67EF6BA68E7B0B0D6EB4F7D4F357B3B42F6F9B05")

build() {
	cd "${srcdir}/lokinet-${_tag}"
	cmake -DCMAKE_INSTALL_PREFIX=/usr -DNATIVE_BUILD=OFF -DSUBMODULE_CHECK=OFF -B build
	#cmake -DCMAKE_INSTALL_PREFIX=/usr -DNATIVE_BUILD=OFF -DWITH_SHARED=ON -DSUBMODULE_CHECK=OFF -B build
        make -C build 
}

package() {	
	cd "${srcdir}/lokinet-${_tag}/build" 
	make DESTDIR="$pkgdir/" install
	mkdir -p "$pkgdir/usr/share/licenses/$pkgname"
	cp ../LICENSE "$pkgdir/usr/share/licenses/$pkgname"
	mkdir -p "$pkgdir/usr/lib/systemd/system/"
	cp "${srcdir}/lokinet.service" "$pkgdir/usr/lib/systemd/system/" 
	mkdir -p "${pkgdir}/var/lib/lokinet"
	mkdir -p "${pkgdir}/etc/sysusers.d/"
	cp "${srcdir}/lokinet.conf" "${pkgdir}/etc/sysusers.d/"
}
