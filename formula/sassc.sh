pkg_set summary "Wrapper around libsass that helps to create command-line apps"
pkg_set git.url "https://github.com/sass/sassc.git"
pkg_set src.url "https://github.com/sass/sassc/archive/refs/tags/3.6.2.tar.gz"
pkg_set src.sha "608dc9002b45a91d11ed59e352469ecc05e4f58fc1259fc9a9f5b8f0f8348a03"
pkg_set license "MIT"
pkg_set dep.pkg "libsass"
pkg_set bsystem "autotools"

build() {
    configure --with-libsass="$libsass_INSTALL_DIR"
}
