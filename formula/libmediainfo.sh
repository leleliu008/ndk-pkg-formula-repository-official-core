pkg_set summary "Unified display of technical and tag data for audio/video"
pkg_set webpage "https://mediaarea.net"
pkg_set src.url "https://mediaarea.net/download/source/libmediainfo/22.06/libmediainfo_22.06.tar.bz2"
pkg_set src.sha "0dc2fb882ded1a1b2908d903fd9c390c732cf1e9e08468de5d324684bcefdfe0"
pkg_set license "BSD-2-Clause"
pkg_set dep.cmd "pkg-config glibtoolize:libtoolize"
pkg_set dep.pkg "libzen zlib curl"
pkg_set bscript "Project/GNU/Library"
pkg_set bsystem "autogen"
pkg_set binbstd "yes"

prepare() {
    sed_in_place 's|${libdir}/libzen.a||' libmediainfo.pc.in &&
    ./autogen.sh
}

build() {
   configure --with-libcurl="$curl_INSTALL_DIR"
}
