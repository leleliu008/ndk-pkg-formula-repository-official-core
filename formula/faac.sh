package set summary "ISO AAC audio encoder"
package set webpage "https://sourceforge.net/projects/faac"
package set src.git "https://github.com/knik0/faac.git"
package set src.url "https://github.com/knik0/faac/archive/refs/tags/1_30.tar.gz"
package set src.sum "adc387ce588cca16d98c03b6ec1e58f0ffd9fc6eadb00e254157d6b16203b2d2"
package set version "1.30"
package set license "LGPL-2.1-or-later"
package set dep.cmd "libtoolize"
package set bsystem "autotools"

prepare() {
    ./bootstrap
}
