pkg_set summary "Draw boxes around text"
pkg_set webpage "https://boxes.thomasjensen.com/"
pkg_set git.url "https://github.com/ascii-boxes/boxes.git"
pkg_set src.url "https://github.com/ascii-boxes/boxes/archive/v2.1.1.tar.gz"
pkg_set src.sha "95ae6b46e057a79c6414b8c0b5b561c3e9d886ab8123a4085d256edccce625f9"
pkg_set license "GPL-2.0-only"
pkg_set dep.pkg "pcre2 libunistring"
pkg_set dep.cmd "flex bison>=2.5"
pkg_set bsystem "make"
pkg_set binbstd "yes"

prepare() {
    sed_in_place 's|STRIP=true||' src/Makefile
}

build() {
    export CPPFLAGS="$CPPFLAGS -I. -I../src"
    makew clean &&
    makew CC="$CC" CFLAGS="'$CPPFLAGS $CFLAGS'" LDFLAGS="'$LDFLAGS'" &&
    run install_bins out/boxes &&
    run install_mans doc/boxes.1 &&
    run install_etcs boxes-config
}
