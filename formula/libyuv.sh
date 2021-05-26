package set summary "C library includes YUV conpackage set version and scaling functionality"
package set webpage "https://chromium.googlesource.com/external/libyuv"
package set src.git "https://github.com/Bilibili/libyuv.git"
package set bsystem "cmake"
package set dep.pkg "libjpeg-turbo"
package set cdefine "LIBYUV_DISABLE_NEON"

build() {
    cmakew \
        -DTEST=OFF \
        -DJPEG_INCLUDE_DIR="$libjpeg_turbo_INCLUDE_DIR" \
        -DJPEG_LIBRARY_RELEASE="$libjpeg_turbo_LIBRARY_DIR/libjpeg.so"
}
