package set summary "Generic library support script"
package set webpage "https://www.gnu.org/software/libtool"
package set src.url "https://ftp.gnu.org/gnu/libtool/libtool-2.4.6.tar.xz"
package set src.sum "7c87a8c2c8c0fc9cd5019e402bed4292462d00a718a7cd5f11218153bf28b26f"
package set license "GPL-2.0"
package set bsystem "configure"

build() {
    configure --enable-ltdl-install
}
