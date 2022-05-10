pkg_set summary "Vi IMproved - enhanced vi editor"
pkg_set webpage "https://www.vim.org/"
pkg_set git.url "https://github.com/vim/vim.git"
pkg_set src.url "https://github.com/vim/vim/archive/v8.2.4900.tar.gz"
pkg_set src.sha "fd92d25b7ec34c8adbb3a9ce19132cc6699350ba46c313263d1d1c5abd28bc94"
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
