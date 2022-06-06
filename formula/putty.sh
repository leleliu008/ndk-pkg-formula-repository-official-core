pkg_set summary "Implementation of Telnet and SSH"
pkg_set webpage "https://www.chiark.greenend.org.uk/~sgtatham/putty/"
pkg_set git.url "https://git.tartarus.org/simon/putty.git"
pkg_set src.url "https://the.earth.li/~sgtatham/putty/0.77/putty-0.77.tar.gz"
pkg_set src.sha "419a76f45238fd45f2c76b42438993056e74fa78374f136052aaa843085beae5"
pkg_set license "MIT"
pkg_set dep.pkg "libglob"
pkg_set bsystem "cmake"

build() {
    export CFLAGS="$(printf '%s\n' "$CFLAGS" | sed 's|-DNDEBUG||g')"

    cmakew -DPUTTY_GTK_VERSION=NONE
}
