summary "Unified display of technical and tag data for audio/video"
webpage "https://mediaarea.net/"
version "20.09"
src_url "https://mediaarea.net/download/source/libmediainfo/20.09/libmediainfo_$(version).tar.bz2"
src_sum "ad2b8fa11a756f1e318921d77240bc1ec454f7ba9ab5bf9a88b9f72e552058bb"
license "BSD-2-Clause"
bsystem "configure"
require "pkg-config"
depends "libzen zlib curl"
sourced "Project/GNU/Library"
build_in_sourced

prepare() {
    sed_in_place 's|${libdir}/libzen.a||' libmediainfo.pc.in &&
    ./autogen.sh
}

build() {
   configure --with-libcurl="$curl_INSTALL_DIR"
}
