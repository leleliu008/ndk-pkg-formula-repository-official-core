package set summary "Open Source H.264 Codec"
package set src.git "https://github.com/cisco/openh264.git"
package set src.url "https://github.com/cisco/openh264/archive/refs/tags/v2.1.1.tar.gz"
package set src.sum "af173e90fce65f80722fa894e1af0d6b07572292e76de7b65273df4c0a8be678"
package set dep.pkg "nasm"
package set bsystem "meson"

build() {
    mesonw -Dtests=disabled
}
