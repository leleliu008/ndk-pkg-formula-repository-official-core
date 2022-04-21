package set summary "Generic library support script"
package set webpage "https://www.gnu.org/software/libtool"
package set src.url "https://ftp.gnu.org/gnu/libtool/libtool-2.4.7.tar.xz"
package set src.sum "4f7f217f057ce655ff22559ad221a0fd8ef84ad1fc5fcb6990cecc333aa1635d"
package set license "GPL-2.0-or-later"
package set bsystem "configure"

build() {
    configure --enable-ltdl-install
}
