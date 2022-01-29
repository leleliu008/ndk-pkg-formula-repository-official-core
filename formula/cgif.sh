package set summary "GIF encoder written in C"
package set git.url "https://github.com/dloebl/cgif"
package set src.url "https://github.com/dloebl/cgif/archive/refs/tags/V0.1.0.tar.gz"
package set src.sum "fc7a79d79c7325cd3ef2093fece064e688bbc0bc309c1a5feae3e62446bbd088"
package set license "MIT"
package set bsystem "meson"

build() {
    mesonw -Dtests=false
}
