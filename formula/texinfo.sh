package set summary "Official documentation format of the GNU project"
package set webpage "https://www.gnu.org/software/texinfo"
package set src.url "https://ftp.gnu.org/gnu/texinfo/texinfo-6.8.tar.xz"
package set src.sum "8eb753ed28bca21f8f56c1a180362aed789229bd62fff58bf8368e9beb59fec4"
package set license "GPL-3.0"
package set bsystem "configure"

build() {
    configure \
        --with-included-regex \
        --enable-threads=posix
}
