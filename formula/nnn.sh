pkg_set summary "Tiny, lightning fast, feature-packed file manager"
pkg_set git.url "https://github.com/jarun/nnn.git"
pkg_set src.url "https://github.com/jarun/nnn/archive/v4.5.tar.gz"
pkg_set src.sha "fadc15bd6d4400c06e5ccc47845b42e60774f368570e475bd882767ee18749aa"
pkg_set license "BSD-2-Clause"
pkg_set dep.pkg "readline"
pkg_set dep.cmd "pkg-config"
pkg_set bsystem "gmake"
pkg_set binbstd "yes"

# stdio.h: char* ctermid(char* __buf) __INTRODUCED_IN(26);
pkg_set sdk.api 26

build() {
    gmakew clean &&
    gmakew install PREFIX="$TARGET_INSTALL_DIR" &&
    install_mans nnn.1
}
