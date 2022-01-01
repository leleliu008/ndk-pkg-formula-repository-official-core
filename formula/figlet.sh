package set summary "Banner-like program prints strings as ASCII art"
package set webpage "http://www.figlet.org/"
package set git.url "https://github.com/cmatsuoka/figlet.git"
package set src.url "http://ftp.figlet.org/pub/figlet/program/unix/figlet-2.2.5.tar.gz"
package set src.sum "bf88c40fd0f077dab2712f54f8d39ac952e4e9f2e1882f1195be9e5e4257417d"
package set license "BSD-3-Clause"
package set bsystem "make"

build() {
    run make -C "$SOURCE_DIR" clean &&
    run make -C "$SOURCE_DIR" install CC="$CC" LD="$CC" CFLAGS="'$CPPFLAGS $CFLAGS'" LDFLAGS="'$LDFLAGS'" prefix="$ABI_INSTALL_DIR"
}
