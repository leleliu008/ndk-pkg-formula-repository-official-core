package set summary "Unified display of technical and tag data for audio/video"
package set webpage "https://mediaarea.net"
package set src.url "https://mediaarea.net/download/source/libmediainfo/22.03/libmediainfo_22.03.tar.bz2"
package set src.sum "9d0a72e9782e343d964d0d3015cd3da0255384730a031907063d44c3fd0ab729"
package set license "BSD-2-Clause"
package set dep.cmd "pkg-config glibtoolize:libtoolize"
package set dep.pkg "libzen zlib curl"
package set bscript "Project/GNU/Library"
package set bsystem "autogen"
package set binbstd 'yes'

prepare() {
    sed_in_place 's|${libdir}/libzen.a||' libmediainfo.pc.in &&
    ./autogen.sh
}

build() {
   configure --with-libcurl="$curl_INSTALL_DIR"
}
