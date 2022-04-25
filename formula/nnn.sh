pkg_set summary "Tiny, lightning fast, feature-packed file manager"
pkg_set git.url "https://github.com/jarun/nnn.git"
pkg_set src.url "https://github.com/jarun/nnn/archive/v4.4.tar.gz"
pkg_set src.sha "e04a3f0f0c2af1e18cb6f005d18267c7703644274d21bb93f03b30e4fd3d1653"
pkg_set license "BSD-2-Clause"
pkg_set dep.pkg "readline"
pkg_set dep.cmd "pkg-config"
pkg_set bsystem "make"
pkg_set binbstd "yes"

# stdio.h: char* ctermid(char* __buf) __INTRODUCED_IN(26);
pkg_set sdk.api 26

build() {
    makew clean &&
    makew install PREFIX="$TARGET_INSTALL_DIR" &&
    install_mans nnn.1
}
