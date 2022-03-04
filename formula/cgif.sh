package set summary "GIF encoder written in C"
package set git.url "https://github.com/dloebl/cgif.git"
package set src.url "https://github.com/dloebl/cgif/archive/refs/tags/V0.2.1.tar.gz"
package set src.sum "ffe60dc57c333ef891c862ed52ff12e7461c28955c5203ecbedf526fc75d3124"
package set license "MIT"
package set bsystem "meson"

build() {
    mesonw -Dtests=false
}
