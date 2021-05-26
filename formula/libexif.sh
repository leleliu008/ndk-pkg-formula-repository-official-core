package set summary "EXIF parsing library"
package set webpage "https://libexif.github.io"
package set src.url "https://github.com/libexif/libexif/releases/download/libexif-0_6_22-release/libexif-0.6.22.tar.xz"
package set src.sum "5048f1c8fc509cc636c2f97f4b40c293338b6041a5652082d5ee2cf54b530c56"
package set license "LGPL-2.1"
package set bsystem "autotools"
package set dep.cmd "autopoint"

build() {
    configure --enable-docs
}
