pkg_set summary "ISO AAC audio encoder"
pkg_set webpage "https://sourceforge.net/projects/faac"
pkg_set git.url "https://github.com/knik0/faac.git"
pkg_set src.url "https://github.com/knik0/faac/archive/refs/tags/1_30.tar.gz"
pkg_set src.sha "adc387ce588cca16d98c03b6ec1e58f0ffd9fc6eadb00e254157d6b16203b2d2"
pkg_set version "1.30"
pkg_set license "LGPL-2.1-or-later"
pkg_set dep.cmd "glibtoolize:libtoolize"
pkg_set bsystem "autotools"

prepare() {
    ./bootstrap
}
