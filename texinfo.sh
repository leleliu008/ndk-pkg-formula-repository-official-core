package set summary "Official documentation format of the GNU project"
package set webpage "https://www.gnu.org/software/texinfo"
package set src.url "https://ftp.gnu.org/gnu/texinfo/texinfo-6.7.tar.xz"
package set src.sum "988403c1542d15ad044600b909997ba3079b10e03224c61188117f3676b02caa"
package set license "GPL-3.0"
package set bsystem "configure"

build() {
    configure \
        --with-included-regex \
        --enable-threads=posix
}
