package set summary "EXIF parsing library"
package set webpage "https://libexif.github.io"
package set git.url "https://github.com/libexif/libexif.git"
package set src.url "https://github.com/libexif/libexif/releases/download/v0.6.24/libexif-0.6.24.tar.bz2"
package set src.sum "d47564c433b733d83b6704c70477e0a4067811d184ec565258ac563d8223f6ae"
package set license "LGPL-2.1-or-later;COPYING;https://raw.githubusercontent.com/libexif/libexif/master/COPYING"
package set dep.cmd "autopoint glibtoolize:libtoolize"
package set bsystem "autotools"

build() {
    configure --enable-docs
}
