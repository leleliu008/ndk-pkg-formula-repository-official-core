package set summary "Vi IMproved - enhanced vi editor"
package set webpage "https://www.vim.org/"
package set git.url "https://github.com/vim/vim.git"
package set src.url "https://github.com/vim/vim/archive/v8.2.4100.tar.gz"
package set src.sum "a07abcbf2cdde5cbb9fdeef205afcb5dee28936dc1011fabd696a72087b68fc4"
package set license "Vim"
package set dep.pkg "gettext python lua"
package set bsystem "configure"
package set binsrcd "yes"

build() {
    printf '\n' > "$WORK_DIR/$TIMESTAMP_UNIX/include.h"

    rm -f ./src/auto/config.cache

    export vim_cv_toupper_broken=no
    export vim_cv_getcwd_broken=no
    export vim_cv_terminfo=yes
    export vim_cv_tgetent=zero
    export vim_cv_memmove_handles_overlap=yes
    export vim_cv_stat_ignores_slash=no
    export vim_cv_uname_output=Linux

    configure \
        --with-tlib=ncursesw \
        --with-compiledby=ndk-pkg \
        --with-features=huge \
        --without-x \
        --enable-cscope \
        --enable-terminal \
        --enable-multibyte \
        --enable-perlinterp=no \
        --enable-rubyinterp=no \
        --enable-python3interp \
        --enable-luainterp \
        --enable-gui=no \
        --with-lua-prefix=$lua_INSTALL_DIR
}