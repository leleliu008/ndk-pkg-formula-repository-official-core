pkg_set summary "Fast, highly customisable system info script"
pkg_set git.url "https://github.com/dylanaraps/neofetch.git"
pkg_set src.url "https://github.com/dylanaraps/neofetch/archive/7.1.0.tar.gz"
pkg_set src.sha "58a95e6b714e41efc804eca389a223309169b2def35e57fa934482a6b47c27e7"
pkg_set license "MIT"

pkg_set binbstd "yes"

build() {
    install_bins neofetch &&
    install_mans neofetch.1
}
