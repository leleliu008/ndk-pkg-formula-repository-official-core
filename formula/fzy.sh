pkg_set summary "Fast, simple fuzzy text selector with an advanced scoring algorithm"
pkg_set git.url "https://github.com/jhawthorn/fzy.git"
pkg_set src.url "https://github.com/jhawthorn/fzy/releases/download/1.0/fzy-1.0.tar.gz"
pkg_set src.sha "80257fd74579e13438b05edf50dcdc8cf0cdb1870b4a2bc5967bd1fdbed1facf"
pkg_set license "MIT"
pkg_set bsystem "make"
pkg_set binbstd "yes"

build() {
    makew clean
    makew install PREFIX="$TARGET_INSTALL_DIR" LIBS=
}
