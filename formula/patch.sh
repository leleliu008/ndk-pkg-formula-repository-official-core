package set summary "Apply a diff file to an original"
package set webpage "https://savannah.gnu.org/projects/patch"
package set src.url "https://ftp.gnu.org/gnu/patch/patch-2.7.6.tar.xz"
package set src.sum "ac610bda97abe0d9f6b7c963255a11dcb196c25e337c61f94e4778d632f1d8fd"
package set license "GPL-3.0"
package set bsystem "configure"

build() {
    configure \
        --enable-xattr \
        --disable-gcc-warnings
}
