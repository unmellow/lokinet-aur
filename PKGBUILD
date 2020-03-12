# Maintainer: Your Name <Amazingminecrafter2015@gmail.com>
# Contributor: Shyamin Ayesh <me@shyamin.com>

pkgname=loki-network
<<<<<<< HEAD
pkgver=0.7.0
||||||| 7fd337ec
pkgver=master
=======
pkgver=0.6.4
>>>>>>> 93cef1056ad09e5685c1790e47bff0425c10d3e6
pkgrel=1
<<<<<<< HEAD
epoch=
pkgdesc="Lokinet is an anonymous, decentralized and IP based overlay network for the internet. (do setcap cap_net_admin,cap_net_bind_service=+eip /usr/local/bin/lokinet) to get it to work"
arch=(x86_64)
url="https://github.com/loki-project/loki-network"
license=('zlib')
groups=()
depends=('bash')
makedepends=()
checkdepends=()
optdepends=()
provides=(lokinet)
conflicts=()
replaces=()
backup=()
options=()
install=
changelog=
source=("https://github.com/loki-project/$pkgname/releases/download/v$pkgver-rc3/lokinet-linux-x64-v$pkgver-50514d55b.tar.xz" "lokinet.service"  "LICENSE")
noextract=()
md5sums=("SKIP" "SKIP" "SKIP")
validpgpkeys=()
||||||| 7fd337ec
epoch=
pkgdesc="Lokinet is an anonymous, decentralized and IP based overlay network for the internet. (do setcap cap_net_admin,cap_net_bind_service=+eip /usr/local/bin/lokinet) to get it to work"
arch=(x86_64)
url="https://github.com/loki-project/loki-network"
license=('zlib')
groups=()
depends=('systemd-resolvconf' 'curl' 'libsodium' 'libuv')
makedepends=( 'gtest' 'gmock' 'cmake' 'make' 'gcc' )
checkdepends=()
optdepends=()
provides=(lokinet)
conflicts=()
replaces=()
backup=()
options=()
install=
changelog=
source=("$pkgname-$pkgver.tar.gz")
noextract=()
md5sums=("SKIP")
validpgpkeys=()
=======
pkgdesc="Lokinet is an anonymous, decentralized and IP based overlay network for the internet."
arch=("x86_64")
url="github.com/loki-project/loki-network"
license=("custom")
depends=("systemd" "curl" "libsodium>=1.0.17" "libuv")
makedepends=("make" "gcc")
source=("${pkgname}-${pkgver}.tar.gz::https://${url}/archive/v${pkgver}.tar.gz")
sha256sums=("01e8713f4627cf97bd9c95755b5f149c762c6d77b62bee4d573421f63ce8b03d")

>>>>>>> 93cef1056ad09e5685c1790e47bff0425c10d3e6

<<<<<<< HEAD
||||||| 7fd337ec
build() {
        cd "$pkgname"	
        make
}

=======
# BUILD
build() {
	cd "${srcdir}/${pkgname}-${pkgver}"
	make
}


# PACKAGE
>>>>>>> 93cef1056ad09e5685c1790e47bff0425c10d3e6
package() {
<<<<<<< HEAD
||||||| 7fd337ec
	cd "$pkgname"
	make DESTDIR="$pkgdir/" install
=======
	cd "${srcdir}/${pkgname}-${pkgver}"
	make DESTDIR="${pkgdir}/" install
>>>>>>> 93cef1056ad09e5685c1790e47bff0425c10d3e6
	mkdir -p $pkgdir/usr/share/licenses/loki-network
<<<<<<< HEAD
	cp LICENSE "$pkgdir/usr/share/licenses/loki-network"
	cd lokinet-linux-x64-v0.7.0-50514d55b
        mkdir -p "$pkgdir/usr/bin/"
	cp lokinet "$pkgdir/usr/bin/"
	sudo chown root:root "$pkgdir/usr/bin/lokinet"
	cp lokinet-bootstrap "$pkgdir/usr/bin/"
	cp lokinetctl "$pkgdir/usr/bin/"
||||||| 7fd337ec
	cp LICENSE "$pkgdir/usr/share/licenses/loki-network"
=======
>>>>>>> 93cef1056ad09e5685c1790e47bff0425c10d3e6
	mkdir -p "$pkgdir/usr/lib/systemd/system/"
<<<<<<< HEAD
	cp ../lokinet.service "$pkgdir/usr/lib/systemd/system/"
	setcap cap_net_admin,cap_net_bind_service=+eip "$pkgdir/usr/bin/lokinet"
||||||| 7fd337ec
	cp debian/lokinet.service "$pkgdir/usr/lib/systemd/system/"
	setcap cap_net_admin,cap_net_bind_service=+eip "$pkgdir/usr/local/bin/lokinet"
=======
	cp debian/lokinet.service "$pkgdir/usr/lib/systemd/system/"
	setcap cap_net_admin,cap_net_bind_service=+eip "$pkgdir/usr/local/bin/lokinet"

	# LICENSE
	install -Dm 644 LICENSE "${pkgdir}/usr/share/licenses/${pkgname}/LICENSE"

>>>>>>> 93cef1056ad09e5685c1790e47bff0425c10d3e6
}
