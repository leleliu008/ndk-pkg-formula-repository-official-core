summary "C library includes YUV conversion and scaling functionality"
webpage "https://chromium.googlesource.com/external/libyuv"
src_git "https://github.com/Bilibili/libyuv.git"
bsystem "cmake"
depends "libjpeg-turbo"
cdefine "LIBYUV_DISABLE_NEON"

build() {
    cmake \
        -DTEST=OFF \
        -DJPEG_INCLUDE_DIR="$libjpeg_turbo_INCLUDE_DIR" \
        -DJPEG_LIBRARY_RELEASE="$libjpeg_turbo_LIBRARY_DIR/libjpeg.so"
}
