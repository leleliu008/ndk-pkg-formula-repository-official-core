summary "Unified display of technical and tag data for audio/video"
webpage "https://mediaarea.net"
version "20.09"
src_url "https://mediaarea.net/download/source/mediainfo/20.09/mediainfo_$(version).tar.bz2"
src_sum "3534cbb6145c0d39d1de3ea104c11b59b320ce9cd39123b6797a9f3af11c61ff"
license "BSD-2-Clause"
bsystem "autogen"
require "pkg-config libtoolize libtool"
depends "libmediainfo"
sourced "Project/GNU/CLI"
build_in_sourced

build() {
    export LDFLAGS="$LDFLAGS $SYSTEM_LIBRARY_DIR/libstdc++.so"
    configure
}
