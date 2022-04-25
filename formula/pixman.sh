pkg_set summary "Low-level library for pixel manipulation"
pkg_set webpage "https://cairographics.org"
pkg_set git.url "https://gitlab.freedesktop.org/pixman/pixman.git"
pkg_set src.url "https://cairographics.org/releases/pixman-0.40.0.tar.gz"
pkg_set src.sha "6d200dec3740d9ec4ec8d1180e25779c00bc749f94278c8b9021f5534db223fc"
pkg_set license "MIT;COPYING;https://gitlab.freedesktop.org/pixman/pixman/-/raw/master/COPYING"
pkg_set bsystem "meson"

build() {
    mesonw \
        -Dneon=disabled \
        -Darm-simd=disabled
}
