pkg_set summary "Graphical front-end for GCC coverage testing tool - gcov"
pkg_set webpage "http://ltp.sourceforge.net/coverage/lcov.php"
pkg_set git.url "https://github.com/linux-test-project/lcov.git"
pkg_set src.url "https://github.com/linux-test-project/lcov/releases/download/v1.15/lcov-1.15.tar.gz"
pkg_set src.sha "c1cda2fa33bec9aa2c2c73c87226cfe97de0831887176b45ee523c5e30f8053a"
pkg_set license "GPL-2.0-or-later"
pkg_set bsystem 'make'
pkg_set binbstd 'yes'

build() {
    make install PREFIX="$TARGET_INSTALL_DIR"
}
