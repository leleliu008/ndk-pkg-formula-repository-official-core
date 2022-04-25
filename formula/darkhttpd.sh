pkg_set summary "Small static webserver without CGI"
pkg_set webpage "https://unix4lyfe.org/darkhttpd/"
pkg_set git.url "https://github.com/emikulic/darkhttpd.git"
pkg_set src.url "https://github.com/emikulic/darkhttpd/archive/v1.13.tar.gz"
pkg_set src.sha "1d88c395ac79ca9365aa5af71afe4ad136a4ed45099ca398168d4a2014dc0fc2"
pkg_set license "ISC"

build() {
    run $CC $CPPFLAGS $CFLAGS $LDFLAGS -pie -fPIE -o darkhttpd $PACKAGE_BSCRIPT_DIR/darkhttpd.c &&
    install_bins darkhttpd
}
