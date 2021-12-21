package set summary "Draw boxes around text"
package set webpage "https://boxes.thomasjensen.com/"
package set src.git "https://github.com/ascii-boxes/boxes.git"
package set src.url "https://github.com/ascii-boxes/boxes/archive/v2.1.1.tar.gz"
package set src.sum "95ae6b46e057a79c6414b8c0b5b561c3e9d886ab8123a4085d256edccce625f9"
package set license "GPL-2.0-only"
package set dep.pkg "pcre2 libunistring"
package set dep.cmd "flex bison>=2.5"
package set bsystem "make"
package set binsrcd "yes"

prepare() {
    sed_in_place 's|STRIP=true||' src/Makefile
}

build() {
    export CPPFLAGS="$CPPFLAGS -I. -I../src"
    makew -C "$SOURCE_DIR" clean &&
    makew -C "$SOURCE_DIR" CC="$CC" CFLAGS="'$CPPFLAGS $CFLAGS'" LDFLAGS="'$LDFLAGS'" &&
    run install_bins out/boxes &&
    run install_mans doc/boxes.1 &&
    run install_etcs boxes-config
}
