package set summary "Open Source H.264 Codec"
package set git.url "https://github.com/cisco/openh264.git"
package set src.url "https://github.com/cisco/openh264/archive/refs/tags/v2.2.0.tar.gz"
package set src.sum "e4e5c8ba48e64ba6ce61e8b6e2b76b2d870c74c270147649082feabb40f25905"
package set license "BSD-2-Clause"
package set dep.cmd "nasm"
package set bsystem "meson"

build() {
    mesonw -Dtests=disabled
}
