pkg_set summary "GIF encoder written in C"
pkg_set git.url "https://github.com/dloebl/cgif.git"
pkg_set src.url "https://github.com/dloebl/cgif/archive/refs/tags/V0.3.0.tar.gz"
pkg_set src.sha "c4f70bbae4c6afee3a524e65be31ae495201fd26687cb8429d7aded8be96306a"
pkg_set license "MIT"
pkg_set bsystem "meson"

build() {
    mesonw -Dtests=false
}
