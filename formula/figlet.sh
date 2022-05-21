pkg_set summary "Banner-like program prints strings as ASCII art"
pkg_set webpage "http://www.figlet.org/"
pkg_set git.url "https://github.com/cmatsuoka/figlet.git"
pkg_set src.url "http://ftp.figlet.org/pub/figlet/program/unix/figlet-2.2.5.tar.gz"
pkg_set src.sha "bf88c40fd0f077dab2712f54f8d39ac952e4e9f2e1882f1195be9e5e4257417d"
pkg_set license "BSD-3-Clause"
pkg_set bsystem "gmake"
pkg_set binbstd "yes"

build() {
    gmakew clean &&
    gmakew install CC="$CC" LD="$CC" CFLAGS="'$CPPFLAGS $CFLAGS'" LDFLAGS="'$LDFLAGS'" prefix="$TARGET_INSTALL_DIR"
}
