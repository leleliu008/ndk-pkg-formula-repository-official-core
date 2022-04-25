pkg_set summary "Audio metadata library"
pkg_set webpage "https://taglib.org/"
pkg_set git.url "https://github.com/taglib/taglib.git"
pkg_set src.url "https://taglib.github.io/releases/taglib-1.12.tar.gz"
pkg_set src.sha "7fccd07669a523b07a15bd24c8da1bbb92206cb19e9366c3692af3d79253b703"
pkg_set license "LGPL-2.1-or-later;COPYING.LGPL;https://raw.githubusercontent.com/taglib/taglib/master/COPYING.LGPL
                     MPL-1.1;COPYING.MPL;https://raw.githubusercontent.com/taglib/taglib/master/COPYING.MPL"
pkg_set dep.pkg "zlib"
pkg_set bsystem "cmake"

build() {
    cmakew \
        -DWITH_MP4=ON \
        -DWITH_ASF=ON
}
