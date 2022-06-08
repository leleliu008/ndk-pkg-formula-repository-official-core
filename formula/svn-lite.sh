pkg_set summary "A minimalist svn client to checkout/update Subversion repositories."
pkg_set git.url "https://github.com/rofl0r/svn-lite.git"
pkg_set src.url "https://github.com/rofl0r/svn-lite/archive/refs/tags/v1.09.tar.gz"
pkg_set src.sha "6152c3c7e73d0face8e2867ed31782e4a08b2d7aae4d45e45b49418b6b08465e"
pkg_set dep.pkg "openssl"
pkg_set binbstd "yes"

build() {
    run rm -f svn
    run $CC $CFLAGS $CPPFLAGS $LDFLAGS -DMAXNAMLEN=512 -I. -lssl -lcrypto -o svn *.c
    run install_bins svn svn2git.sh
}
