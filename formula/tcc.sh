pkg_set summary "Tiny C compiler"
pkg_set webpage "http://www.tinycc.org/"
pkg_set git.url "https://repo.or.cz/tinycc.git"
pkg_set src.url "https://download.savannah.nongnu.org/releases/tinycc/tcc-0.9.27.tar.bz2"
pkg_set src.sha "de23af78fca90ce32dff2dd45b3432b2334740bb9bb7b05bf60fdbfc396ceb9c"
pkg_set license "LGPL-2.1-or-later|COPYING|https://repo.or.cz/tinycc.git/blob_plain/HEAD:/COPYING"
pkg_set bsystem "gmake"

prepare() {
    printf 'clean:\n\n' > lib/Makefile
}

build() {
    run "$PACKAGE_INSTALLING_BST_DIR/configure" \
        --source-path="$PACKAGE_INSTALLING_BST_DIR" \
        --prefix="$TARGET_INSTALL_DIR" \
        --cpu=$TARGET_OS_ARCH \
        --cc=$CC \
        --ar=$AR \
        --extra-cflags="'$CPPFLAGS $CFLAGS'" \
        --extra-ldflags="'$LDFLAGS'" \
        --enable-cross &&
    gmakew clean &&
    gmakew ONE_SOURCE=yes &&
    gmakew install
}
