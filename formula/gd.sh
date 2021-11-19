package set summary "Graphics library to dynamically manipulate images"
package set webpage "https://libgd.github.io/"
package set src.git "https://github.com/libgd/libgd.git"
package set src.url "https://github.com/libgd/libgd/releases/download/gd-2.3.3/libgd-2.3.3.tar.xz"
package set src.sum "3fe822ece20796060af63b7c60acb151e5844204d289da0ce08f8fdf131e5a61"
package set dep.pkg "fontconfig libwebp"
package set bsystem "configure"

build() {
    configure --without-x --without-xpm
}
