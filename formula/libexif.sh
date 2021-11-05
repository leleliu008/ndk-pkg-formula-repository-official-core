package set summary "EXIF parsing library"
package set webpage "https://libexif.github.io"
package set src.git "https://github.com/libexif/libexif.git"
package set src.url "https://github.com/libexif/libexif/releases/download/v0.6.23/libexif-0.6.23.tar.xz"
package set src.sum "a740a99920eb81ae0aa802bb46e683ce6e0cde061c210f5d5bde5b8572380431"
package set license "LGPL-2.1"
package set bsystem "autotools"
package set dep.cmd "autopoint"

build() {
    configure --enable-docs
}
