pkg_set summary "Unified display of technical and tag data for audio/video"
pkg_set webpage "https://mediaarea.net"
pkg_set src.url "https://mediaarea.net/download/source/libzen/0.4.39/libzen_0.4.39.tar.bz2"
pkg_set src.sha "bd2772ab1ae4e375cdbbbdd114ad8471ebe67bf78c76e3812d66c7d462ed8ae7"
pkg_set license "BSD-2-Clause"
pkg_set dep.cmd "glibtoolize:libtoolize"
pkg_set bscript "Project/GNU/Library"
pkg_set bsystem "autogen"
pkg_set binbstd "yes"

# https://mediaarea.net/en/MediaInfo/Download/Source

prepare() {
    sed_in_place 's|-lpthread||g' configure.ac && run ./autogen.sh
}
