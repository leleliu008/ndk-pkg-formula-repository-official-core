package set summary "High-speed packet processing framework"
package set webpage "https://www.ntop.org/"
package set git.url "https://github.com/ntop/PF_RING.git"
package set src.url "https://github.com/ntop/PF_RING/archive/refs/tags/8.0.0.tar.gz"
package set src.sum "8e733899b736fe2536ef785b2b7d719abe652297fe7fe3a03fc495a87a9b6e82"
package set license "LGPL-2.1-or-later"
package set bsystem "make"

build() {
    makew clean &&
    makew install
}
