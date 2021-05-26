package set summary "Bourne-Again SHell, a UNIX command interpreter"
package set webpage "https://www.gnu.org/software/bash"
package set src.git "https://git.savannah.gnu.org/git/bash.git"
package set src.url "https://mirrors.tuna.tsinghua.edu.cn/gnu/bash/bash-5.0.tar.gz"
package set src.sum "b4a80f2ac66170b2913efbfb9f2594f1f76c7b1afd11f799e22035d63077fb4d"
package set version "5.0.18"
package set license "GPL-3.0-or-later"
package set bsystem "configure"
package set dep.pkg "readline ncurses"

build() {
    configure \
        --with-curses \
        --without-bash-malloc \
        --disable-profiling \
        --enable-readline \
        --enable-select \
        --enable-history \
        --enable-static-link
}
