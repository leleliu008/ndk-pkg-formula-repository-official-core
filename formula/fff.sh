package set summary "Simple file manager written in bash"
package set git.url "https://github.com/dylanaraps/fff.git"
package set src.url "https://github.com/dylanaraps/fff/archive/2.2.tar.gz"
package set src.sum "45f6e1091986c892ea45e1ac82f2d7f5417cfb343dc569d2625b5980e6bcfb62"
package set license "MIT"
package set binbstd "yes"

build() {
    install_bins fff &&
    install_mans fff.1
}
