pkg_set summary "Terminal interaction recorder and player"
pkg_set webpage "http://0xcc.net/ttyrec"
pkg_set src.url "http://0xcc.net/ttyrec/ttyrec-1.0.8.tar.gz"
pkg_set src.sha "ef5e9bf276b65bb831f9c2554cd8784bd5b4ee65353808f82b7e2aef851587ec"
pkg_set license "BSD-3-Clause"
pkg_set bsystem "gmake"
pkg_set binbstd "yes"

prepare() {
    sed_in_place 's|union wait status|int status|' ttyrec.c
}

build() {
    gmakew clean &&
    gmakew CC=$CC CFLAGS="'$CFLAGS $CPPFLAGS $LDFLAGS'" &&
    install_bins ttyrec ttyplay ttytime
}
