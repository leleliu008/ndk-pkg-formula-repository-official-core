package set summary "Graphical front-end for GCC's coverage testing tool (gcov)"
package set webpage "http://ltp.sourceforge.net/coverage/lcov.php"
package set git.url "https://github.com/linux-test-project/lcov.git"
package set src.url "https://github.com/linux-test-project/lcov/releases/download/v1.15/lcov-1.15.tar.gz"
package set src.sum "c1cda2fa33bec9aa2c2c73c87226cfe97de0831887176b45ee523c5e30f8053a"
package set license "GPL-2.0-or-later"
package set bsystem 'make'
package set binbstd 'yes'

build() {
    make install PREFIX="$TARGET_INSTALL_DIR"
}
