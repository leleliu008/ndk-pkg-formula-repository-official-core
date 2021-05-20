package set summary "Fast, highly customisable system info script"
package set src.git "https://github.com/dylanaraps/neofetch.git"
package set src.url "https://github.com/dylanaraps/neofetch/archive/7.1.0.tar.gz"
package set src.sum "58a95e6b714e41efc804eca389a223309169b2def35e57fa934482a6b47c27e7"
package set license "MIT"

package set binsrcd true

build() {
    install_bins neofetch &&
    install_mans neofetch.1
}
