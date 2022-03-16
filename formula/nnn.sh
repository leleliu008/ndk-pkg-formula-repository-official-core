package set summary "Tiny, lightning fast, feature-packed file manager"
package set git.url "https://github.com/jarun/nnn.git"
package set src.url "https://github.com/jarun/nnn/archive/v4.4.tar.gz"
package set src.sum "e04a3f0f0c2af1e18cb6f005d18267c7703644274d21bb93f03b30e4fd3d1653"
package set license "BSD-2-Clause"
package set dep.pkg "readline"
package set dep.cmd "pkg-config"
package set bsystem "make"
package set binsrcd "yes"

# stdio.h: char* ctermid(char* __buf) __INTRODUCED_IN(26);
package set sdk.api 26

build() {
    makew clean &&
    makew install PREFIX="$TARGET_INSTALL_DIR" &&
    install_mans nnn.1
}
