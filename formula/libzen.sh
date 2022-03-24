package set summary "Unified display of technical and tag data for audio/video"
package set webpage "https://mediaarea.net"
package set src.url "https://mediaarea.net/download/source/libzen/0.4.39/libzen_0.4.39.tar.bz2"
package set src.sum "bd2772ab1ae4e375cdbbbdd114ad8471ebe67bf78c76e3812d66c7d462ed8ae7"
package set license "BSD-2-Clause"
package set dep.cmd "glibtoolize:libtoolize"
package set bscript "Project/GNU/Library"
package set bsystem "autogen"
package set binbstd 'yes'

# https://mediaarea.net/en/MediaInfo/Download/Source

prepare() {
    sed_in_place 's|-lpthread||g' configure.ac && ./autogen.sh
}
