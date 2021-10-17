package set summary "Unified display of technical and tag data for audio/video"
package set webpage "https://mediaarea.net"
package set version "20.09"
package set src.url "https://mediaarea.net/download/source/libmediainfo/20.09/libmediainfo_${PACKAGE_VERSION}.tar.bz2"
package set src.sum "ad2b8fa11a756f1e318921d77240bc1ec454f7ba9ab5bf9a88b9f72e552058bb"
package set license "BSD-2-Clause"
package set bsystem "autogen"
package set dep.cmd "pkg-config"
package set dep.pkg "libzen zlib curl"
package set sourced "Project/GNU/Library"
package set binsrcd 'YES'

prepare() {
    sed_in_place 's|${libdir}/libzen.a||' libmediainfo.pc.in &&
    ./autogen.sh
}

build() {
   configure --with-libcurl="$curl_INSTALL_DIR"
}
