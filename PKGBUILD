# This is an example PKGBUILD file. Use this as a start to creating your own,
# and remove these comments. For more information, see 'man PKGBUILD'.
# NOTE: Please fill out the license field for your package! If it is unknown,
# then please put 'unknown'.

# Maintainer: Your Name <Amazingminecrafter2015@gmail.com>
pkgname=loki-network
pkgver=0.7.0
pkgrel=1
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

package() {
	mkdir -p $pkgdir/usr/share/licenses/loki-network
	cp LICENSE "$pkgdir/usr/share/licenses/loki-network"
	cd lokinet-linux-x64-v0.7.0-50514d55b
        mkdir -p "$pkgdir/usr/bin/"
	cp lokinet "$pkgdir/usr/bin/"
	sudo chown root:root "$pkgdir/usr/bin/lokinet"
	cp lokinet-bootstrap "$pkgdir/usr/bin/"
	cp lokinetctl "$pkgdir/usr/bin/"
	mkdir -p "$pkgdir/usr/lib/systemd/system/"
	cp ../lokinet.service "$pkgdir/usr/lib/systemd/system/"
	setcap cap_net_admin,cap_net_bind_service=+eip "$pkgdir/usr/bin/lokinet"
}
