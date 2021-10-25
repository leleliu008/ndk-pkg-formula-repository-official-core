package set summary "Coreutils progress viewer"
package set src.git "https://github.com/Xfennec/progress.git"
package set src.url "https://github.com/Xfennec/progress/archive/v0.15.tar.gz"
package set src.sum "1ed0ac65a912ef1aa605d524eaddaacae92079cf71182096a7c65cbc61687d1b"
package set license "GPL-3.0"
package set bsystem "make"
package set dep.cmd "pkg-config"
package set dep.pkg "ncurses libwordexp"

package set binsrcd 'yes'

build() {
    makew clean &&
    makew CC="$CC" CFLAGS="'$CFLAGS $CPPFLAGS'" LDFLAGS="'$LDFLAGS $libwordexp_LIBRARY_DIR/libwordexp.a'" UNAME=Linux &&
    makew install PREFIX="$ABI_INSTALL_DIR"
}
