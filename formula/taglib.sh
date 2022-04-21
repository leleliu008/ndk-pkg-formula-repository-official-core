package set summary "Audio metadata library"
package set webpage "https://taglib.org/"
package set git.url "https://github.com/taglib/taglib.git"
package set src.url "https://taglib.github.io/releases/taglib-1.12.tar.gz"
package set src.sum "7fccd07669a523b07a15bd24c8da1bbb92206cb19e9366c3692af3d79253b703"
package set license "LGPL-2.1-or-later;COPYING.LGPL;https://raw.githubusercontent.com/taglib/taglib/master/COPYING.LGPL
                     MPL-1.1;COPYING.MPL;https://raw.githubusercontent.com/taglib/taglib/master/COPYING.MPL"
package set dep.pkg "zlib"
package set bsystem "cmake"

build() {
    cmakew \
        -DWITH_MP4=ON \
        -DWITH_ASF=ON
}
