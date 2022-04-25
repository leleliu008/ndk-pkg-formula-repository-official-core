pkg_set summary "Lightweight and flexible command-line JSON processor"
pkg_set webpage "https://stedolan.github.io/jq"
pkg_set git.url "https://github.com/stedolan/jq.git"
pkg_set src.url "https://github.com/stedolan/jq/releases/download/jq-1.6/jq-1.6.tar.gz"
pkg_set src.sha "5de8c8e29aaa3fb9cc6b47bb27299f271354ebb72514e3accadc7d38b5bbaa72"
pkg_set license "MIT"
pkg_set dep.pkg "oniguruma"
pkg_set dep.cmd "bison>=3.0"
pkg_set bsystem "configure"

build() {
    configure --with-oniguruma="$oniguruma_INSTALL_DIR"
}
