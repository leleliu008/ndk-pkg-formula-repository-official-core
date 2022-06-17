pkg_set summary "Graphical front-end for GCC coverage testing tool - gcov"
pkg_set webpage "http://ltp.sourceforge.net/coverage/lcov.php"
pkg_set git.url "https://github.com/linux-test-project/lcov.git"
pkg_set src.url "https://github.com/linux-test-project/lcov/releases/download/v1.16/lcov-1.16.tar.gz"
pkg_set src.sha "987031ad5528c8a746d4b52b380bc1bffe412de1f2b9c2ba5224995668e3240b"
pkg_set license "GPL-2.0-or-later"
pkg_set bsystem "gmake"
pkg_set binbstd "yes"

build() {
    gmakew clean &&
    gmakew install PREFIX="$TARGET_INSTALL_DIR"
}
