pkg_set summary "Open Source H.264 Codec"
pkg_set git.url "https://github.com/cisco/openh264.git"
pkg_set src.url "https://github.com/cisco/openh264/archive/refs/tags/v2.2.0.tar.gz"
pkg_set src.sha "e4e5c8ba48e64ba6ce61e8b6e2b76b2d870c74c270147649082feabb40f25905"
pkg_set license "BSD-2-Clause"
pkg_set dep.cmd "nasm"
pkg_set bsystem "meson"

build() {
    mesonw -Dtests=disabled
}
