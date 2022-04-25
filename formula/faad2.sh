pkg_set summary "ISO AAC audio decoder"
pkg_set webpage "https://sourceforge.net/projects/faac/"
pkg_set git.url "https://github.com/knik0/faad2.git"
pkg_set src.url "https://github.com/knik0/faad2/archive/refs/tags/2_10_0.tar.gz"
pkg_set src.sha "0c6d9636c96f95c7d736f097d418829ced8ec6dbd899cc6cc82b728480a84bfb"
pkg_set version "2.10.0"
pkg_set license "GPL-2.0-or-later"
pkg_set dep.cmd "glibtoolize:libtoolize"
pkg_set bsystem "autotools"
pkg_set ldflags "-lm"

prepare() {
    ./bootstrap
}
