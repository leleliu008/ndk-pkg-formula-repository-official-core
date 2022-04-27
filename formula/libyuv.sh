pkg_set summary "C library includes YUV conversion and scaling functionality"
pkg_set webpage "https://chromium.googlesource.com/libyuv/libyuv"
pkg_set git.url "https://github.com/leleliu008/libyuv.git"
pkg_set src.url "https://github.com/leleliu008/libyuv/archive/refs/tags/v1788.tar.gz"
pkg_set src.sha "5daec5a5868600d1682397ef0941b2bdf2d02c07d2d499b0a1604afedaf23540"
pkg_set license "|LICENSE|https://raw.githubusercontent.com/leleliu008/libyuv/master/LICENSE"
pkg_set dep.pkg "libjpeg-turbo"
pkg_set bsystem "cmake"
pkg_set cdefine "LIBYUV_DISABLE_NEON"

build() {
    cmakew -DTEST=OFF
}
