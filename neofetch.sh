summary "Fast, highly customisable system info script"
src_git "https://github.com/dylanaraps/neofetch.git"
src_url "https://github.com/dylanaraps/neofetch/archive/7.1.0.tar.gz"
src_sum "58a95e6b714e41efc804eca389a223309169b2def35e57fa934482a6b47c27e7"
license "MIT"

build_in_sourced

build() {
    install_bins neofetch &&
    install_mans neofetch.1
}
