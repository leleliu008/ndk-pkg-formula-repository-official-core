package set summary "C library includes YUV conpackage set version and scaling functionality"
package set webpage "https://chromium.googlesource.com/libyuv/libyuv"
package set git.url "https://github.com/leleliu008/libyuv.git"
package set src.url "https://github.com/leleliu008/libyuv/archive/refs/tags/v1788.tar.gz"
package set src.sum "5daec5a5868600d1682397ef0941b2bdf2d02c07d2d499b0a1604afedaf23540"
package set bsystem "cmake"
package set dep.pkg "libjpeg-turbo"
package set cdefine "LIBYUV_DISABLE_NEON"

build() {
    cmakew \
        -DTEST=OFF \
        -DJPEG_INCLUDE_DIR="$libjpeg_turbo_INCLUDE_DIR" \
        -DJPEG_LIBRARY_RELEASE="$libjpeg_turbo_LIBRARY_DIR/libjpeg.so"
}
