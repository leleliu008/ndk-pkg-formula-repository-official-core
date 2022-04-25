pkg_set summary "GIF encoder written in C"
pkg_set git.url "https://github.com/dloebl/cgif.git"
pkg_set src.url "https://github.com/dloebl/cgif/archive/refs/tags/V0.2.1.tar.gz"
pkg_set src.sha "ffe60dc57c333ef891c862ed52ff12e7461c28955c5203ecbedf526fc75d3124"
pkg_set license "MIT"
pkg_set bsystem "meson"

build() {
    mesonw -Dtests=false
}
