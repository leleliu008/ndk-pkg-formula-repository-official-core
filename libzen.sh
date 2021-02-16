summary "Unified display of technical and tag data for audio/video"
webpage "https://mediaarea.net/"
version "0.4.38"
src_url "https://mediaarea.net/download/source/libzen/0.4.38/libzen_$(version).tar.bz2"
src_sum "594e07bb4a0472cd9da258b3c4e050e9a37a39cccd85e3d8b5bf597d027b7eda"
license "BSD-2-Clause"
require "make"
sourced "Project/GNU/Library"
build_in_sourced

prepare() {
    sed_in_place 's|-lpthread||g' configure.ac &&
    ./autogen.sh
}

build() {
   configure
}
