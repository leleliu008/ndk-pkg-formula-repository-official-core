pkg_set summary "Simple file manager written in bash"
pkg_set git.url "https://github.com/dylanaraps/fff.git"
pkg_set src.url "https://github.com/dylanaraps/fff/archive/2.2.tar.gz"
pkg_set src.sha "45f6e1091986c892ea45e1ac82f2d7f5417cfb343dc569d2625b5980e6bcfb62"
pkg_set license "MIT"
pkg_set binbstd "yes"

build() {
    install_bins fff &&
    install_mans fff.1
}
