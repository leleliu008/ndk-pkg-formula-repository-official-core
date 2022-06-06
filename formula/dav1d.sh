pkg_set summary "AV1 decoder targeted to be small and fast"
pkg_set git.url "https://code.videolan.org/videolan/dav1d.git"
pkg_set src.url "https://code.videolan.org/videolan/dav1d/-/archive/1.0.0/dav1d-1.0.0.tar.bz2"
pkg_set src.sha "4a4eb6cecbc8c26916ef58886d478243de8bcc46710b369c04d6891b0155ac0f"
pkg_set license "BSD-2-Clause|COPYING|https://code.videolan.org/videolan/dav1d/-/raw/master/COPYING"
pkg_set developer "VideoLAN+and+dav1d+authors"
pkg_set dep.cmd "nasm"
pkg_set bsystem "meson"

build() {
    mesonw \
        -Denable_asm=true \
        -Denable_tools=true \
        -Denable_tests=false \
        -Denable_examples=false
}
