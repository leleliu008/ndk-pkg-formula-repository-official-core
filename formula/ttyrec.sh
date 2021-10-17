package set summary "Terminal interaction recorder and player"
package set webpage "http://0xcc.net/ttyrec"
package set src.url "http://0xcc.net/ttyrec/ttyrec-1.0.8.tar.gz"
package set src.sum "ef5e9bf276b65bb831f9c2554cd8784bd5b4ee65353808f82b7e2aef851587ec"
package set bsystem "make"

package set binsrcd 'YES'

prepare() {
    sed_in_place 's|union wait status|int status|' ttyrec.c
}

build() {
    makew clean &&
    makew CC=$CC CFLAGS="'$CFLAGS $CPPFLAGS $LDFLAGS'" &&
    install_bins ttyrec ttyplay ttytime
}
