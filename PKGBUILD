# This is an example PKGBUILD file. Use this as a start to creating your own,
# and remove these comments. For more information, see 'man PKGBUILD'.
# NOTE: Please fill out the license field for your package! If it is unknown,
# then please put 'unknown'.

# Maintainer: Your Name <Amazingminecrafter2015@gmail.com>
pkgname=loki-network
pkgver=master
pkgrel=1
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
source=("https://github.com/loki-project/$pkgname/archive/$pkgver.zip")
noextract=()
md5sums=("262eb015e13bef5444f36e06fbb046e9")
validpgpkeys=()

build() {
        cd "$pkgname"
	GIT_DISCOVERY_ACROSS_FILESYSTEM=true
	git submodule init
        make
}

package() {
	cd "$pkgname"
	make DESTDIR="$pkgdir/" install
	mkdir -p $pkgdir/usr/share/licenses/loki-network
	cp LICENSE "$pkgdir/usr/share/licenses/loki-network"
	mkdir -p "$pkgdir/usr/lib/systemd/system/"
	cp debian/lokinet.service "$pkgdir/usr/lib/systemd/system/"
	setcap cap_net_admin,cap_net_bind_service=+eip "$pkgdir/usr/local/bin/lokinet"
}
