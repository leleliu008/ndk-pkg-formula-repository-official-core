pkg_set summary "High-speed packet processing framework"
pkg_set webpage "https://www.ntop.org/"
pkg_set git.url "https://github.com/ntop/PF_RING.git"
pkg_set src.url "https://github.com/ntop/PF_RING/archive/refs/tags/8.0.0.tar.gz"
pkg_set src.sha "8e733899b736fe2536ef785b2b7d719abe652297fe7fe3a03fc495a87a9b6e82"
pkg_set license "LGPL-2.1-or-later"
pkg_set bsystem "make"

build() {
    makew clean &&
    makew install
}
