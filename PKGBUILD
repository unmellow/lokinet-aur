# Maintainer: Your Name <Amazingminecrafter2015@gmail.com>
# Contributor: Shyamin Ayesh <me@shyamin.com>

pkgname=loki-network
pkgver=0.6.4
pkgrel=1
pkgdesc="Lokinet is an anonymous, decentralized and IP based overlay network for the internet."
arch=("x86_64")
url="github.com/loki-project/loki-network"
license=("custom")
depends=("systemd" "curl" "libsodium>=1.0.17" "libuv")
makedepends=("make" "gcc")
source=("${pkgname}-${pkgver}.tar.gz::https://${url}/archive/v${pkgver}.tar.gz")
sha256sums=("01e8713f4627cf97bd9c95755b5f149c762c6d77b62bee4d573421f63ce8b03d")


# BUILD
build() {
	cd "${srcdir}/${pkgname}-${pkgver}"
	make
}


# PACKAGE
package() {
	cd "${srcdir}/${pkgname}-${pkgver}"
	make DESTDIR="${pkgdir}/" install
	mkdir -p $pkgdir/usr/share/licenses/loki-network
	mkdir -p "$pkgdir/usr/lib/systemd/system/"
	cp debian/lokinet.service "$pkgdir/usr/lib/systemd/system/"
	setcap cap_net_admin,cap_net_bind_service=+eip "$pkgdir/usr/local/bin/lokinet"

	# LICENSE
	install -Dm 644 LICENSE "${pkgdir}/usr/share/licenses/${pkgname}/LICENSE"

}
