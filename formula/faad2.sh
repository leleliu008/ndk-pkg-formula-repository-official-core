package set summary "ISO AAC audio decoder"
package set webpage "https://sourceforge.net/projects/faac/"
package set src.git "https://github.com/knik0/faad2.git"
package set src.url "https://github.com/knik0/faad2/archive/refs/tags/2_10_0.tar.gz"
package set src.sum "0c6d9636c96f95c7d736f097d418829ced8ec6dbd899cc6cc82b728480a84bfb"
package set version "2.10.0"
package set license "GPL-2.0-or-later"
package set dep.cmd "libtoolize"
package set bsystem "autotools"
package set ldflags "-lm"

prepare() {
    ./bootstrap
}
