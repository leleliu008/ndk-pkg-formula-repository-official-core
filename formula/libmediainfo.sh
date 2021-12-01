package set summary "Unified display of technical and tag data for audio/video"
package set webpage "https://mediaarea.net"
package set src.url "https://mediaarea.net/download/source/libmediainfo/21.09/libmediainfo_21.09.tar.bz2"
package set src.sum "6a31671d99a3da4589f95825a603c061768fee17dc64daaae716e5ade131c27c"
package set license "BSD-2-Clause"
package set dep.cmd "pkg-config glibtoolize:libtoolize"
package set dep.pkg "libzen zlib curl"
package set sourced "Project/GNU/Library"
package set bsystem "autogen"
package set binsrcd 'yes'

prepare() {
    sed_in_place 's|${libdir}/libzen.a||' libmediainfo.pc.in &&
    ./autogen.sh
}

build() {
   configure --with-libcurl="$curl_INSTALL_DIR"
}
