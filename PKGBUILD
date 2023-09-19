
# Maintainer: Gurjiwan Singh <gurrjiwan@gmail.com>
pkgname=uall.sh
pkgver=v1.0.1
pkgrel=1
pkgdesc="Single Bash script to update packages using pacman yay and flatpak"
arch=('any')
url="https://github.com/Gurjiwan/uall"
license=('GPL3')
provides=("${pkgname}")
source=('https://github.com/Gurjiwan/uall/archive/refs/tags/${pkgver}.tar.gz')
md5sums=('SKIP')

package() {
	install -D -t  "$pkgdir/usr/bin" "$srcdir/uall-1.0.1/uall.sh"
}
