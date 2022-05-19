pkg_set summary "Unified display of technical and tag data for audio/video"
pkg_set webpage "https://mediaarea.net"
pkg_set src.url "https://mediaarea.net/download/source/libmediainfo/22.03/libmediainfo_22.03.tar.bz2"
pkg_set src.sha "9d0a72e9782e343d964d0d3015cd3da0255384730a031907063d44c3fd0ab729"
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
