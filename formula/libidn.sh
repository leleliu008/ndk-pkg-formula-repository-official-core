package set summary "International domain name library"
package set webpage "https://www.gnu.org/software/libidn/"
package set src.url "https://ftp.gnu.org/gnu/libidn/libidn-1.38.tar.gz"
package set src.sum "de00b840f757cd3bb14dd9a20d5936473235ddcba06d4bc2da804654b8bbf0f6"
package set license "GPL-2.0-or-later LGPL-3.0-or-later"
package set dep.cmd "pkg-config"
package set bsystem "configure"

build() {
    configure \
        --disable-valgrind-tests \
        --enable-gcc-warnings \
        --enable-doc
}
