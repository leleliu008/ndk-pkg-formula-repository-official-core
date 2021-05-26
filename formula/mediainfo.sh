package set summary "Unified display of technical and tag data for audio/video"
package set webpage "https://mediaarea.net"
package set version "20.09"
package set src.url "https://mediaarea.net/download/source/mediainfo/20.09/mediainfo_${PACKAGE_VERSION}.tar.bz2"
package set src.sum "3534cbb6145c0d39d1de3ea104c11b59b320ce9cd39123b6797a9f3af11c61ff"
package set license "BSD-2-Clause"
package set bsystem "autogen"
package set dep.cmd "pkg-config libtoolize libtool"
package set dep.pkg "libmediainfo"
package set sourced "Project/GNU/CLI"
package set binsrcd true

build() {
    export LDFLAGS="$LDFLAGS $SYSTEM_LIBRARY_DIR/libstdc++.so"
    configure
}
