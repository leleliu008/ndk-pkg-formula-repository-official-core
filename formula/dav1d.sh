pkg_set summary "AV1 decoder targeted to be small and fast"
pkg_set git.url "https://code.videolan.org/videolan/dav1d.git"
pkg_set src.url "https://code.videolan.org/videolan/dav1d/-/archive/0.9.2/dav1d-0.9.2.tar.bz2"
pkg_set src.sha "0d198c4fe63fe7f0395b1b17de75b21c8c4508cd3204996229355759efa30ef8"
pkg_set license "BSD-2-Clause|COPYING|https://code.videolan.org/videolan/dav1d/-/raw/master/COPYING"
pkg_set developer "VideoLAN+and+dav1d+authors;;;"
pkg_set dep.cmd "nasm"
pkg_set bsystem "meson"

build() {
    mesonw \
        -Denable_asm=true \
        -Denable_tools=true \
        -Denable_tests=false \
        -Denable_examples=false
}
