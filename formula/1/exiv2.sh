package set summary "EXIF and IPTC metadata manipulation library and tools"
package set webpage "https://exiv2.org/"
package set version "0.27.5"
package set git.url "https://github.com/Exiv2/exiv2.git"
package set src.url "https://github.com/Exiv2/exiv2/releases/download/v$PACKAGE_VERSION/exiv2-$PACKAGE_VERSION-Source.tar.gz"
package set src.sum "35a58618ab236a901ca4928b0ad8b31007ebdc0386d904409d825024e45ea6e2"
package set license "GPL-2.0-or-later"
package set dep.pkg "zlib expat"
package set ldflags "-lc++_shared"
package set bsystem "cmake"

build() {
    cmakew \
        -DEXIV2_ENABLE_VIDEO=ON \
        -DEXIV2_ENABLE_BUILD_SAMPLES=OFF
}
