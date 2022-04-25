pkg_set summary "Graphics library to dynamically manipulate images"
pkg_set webpage "https://libgd.github.io/"
pkg_set git.url "https://github.com/libgd/libgd.git"
pkg_set src.url "https://github.com/libgd/libgd/releases/download/gd-2.3.3/libgd-2.3.3.tar.xz"
pkg_set src.sha "3fe822ece20796060af63b7c60acb151e5844204d289da0ce08f8fdf131e5a61"
pkg_set license ";COPYING;https://raw.githubusercontent.com/libgd/libgd/master/COPYING"
pkg_set dep.pkg "fontconfig libwebp"
pkg_set bsystem "configure"

build() {
    configure --without-x --without-xpm
}
