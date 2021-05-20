package set summary "Low-level library for pixel manipulation"
package set webpage "https://cairographics.org"
package set src.url "https://cairographics.org/releases/pixman-0.40.0.tar.gz"
package set src.sum "6d200dec3740d9ec4ec8d1180e25779c00bc749f94278c8b9021f5534db223fc"
package set license "LGPL-2.1"
package set bsystem "meson"

build() {
    mesonw \
        -Dneon=disabled \
        -Darm-simd=disabled
}
