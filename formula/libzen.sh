package set summary "Unified display of technical and tag data for audio/video"
package set webpage "https://mediaarea.net"
package set version "0.4.38"
package set src.url "https://mediaarea.net/download/source/libzen/0.4.38/libzen_${PACKAGE_VERSION}.tar.bz2"
package set src.sum "594e07bb4a0472cd9da258b3c4e050e9a37a39cccd85e3d8b5bf597d027b7eda"
package set license "BSD-2-Clause"
package set bsystem "autogen"
package set dep.cmd "libtoolize libtool"
package set sourced "Project/GNU/Library"
package set binsrcd true

prepare() {
    sed_in_place 's|-lpthread||g' configure.ac && ./autogen.sh
}
