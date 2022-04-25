pkg_set summary "Vi IMproved - enhanced vi editor"
pkg_set webpage "https://www.vim.org/"
pkg_set git.url "https://github.com/vim/vim.git"
pkg_set src.url "https://github.com/vim/vim/archive/v8.2.4700.tar.gz"
pkg_set src.sha "ccf96833675361f30064c6ac8a9637cec6362d6eb7df78fcf789e70bca042c6d"
pkg_set license "Vim"
pkg_set dep.pkg "gettext python lua"
pkg_set bsystem "configure"
pkg_set binbstd "yes"

build() {
    printf '\n' > ../include.h

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
