summary "Terminal interaction recorder and player"
webpage "http://0xcc.net/ttyrec"
src_url "http://0xcc.net/ttyrec/ttyrec-1.0.8.tar.gz"
src_sum "ef5e9bf276b65bb831f9c2554cd8784bd5b4ee65353808f82b7e2aef851587ec"
bsystem "make"

build_in_sourced

prepare() {
    sed_in_place 's|wait3(|waitpid(-1, |' ttyrec.c &&
    sed_in_place 's|WNOHANG, 0|WNOHANG|'  ttyrec.c &&
    sed_in_place 's|union wait status|int status|' ttyrec.c
}

build() {
    make clean &&
    make CC=$CC CFLAGS="'$CFLAGS $CPPFLAGS $LDFLAGS'" &&
    install_bins ttyrec ttyplay ttytime
}
