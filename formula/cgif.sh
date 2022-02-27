package set summary "GIF encoder written in C"
package set git.url "https://github.com/dloebl/cgif"
package set src.url "https://github.com/dloebl/cgif/archive/refs/tags/V0.2.0.tar.gz"
package set src.sum "d00fd4bf2a7b47bc3b0c3b2c8f2215b1bdfd88f0569388d752909b878db27bfb"
package set license "MIT"
package set bsystem "meson"

build() {
    mesonw -Dtests=false
}
