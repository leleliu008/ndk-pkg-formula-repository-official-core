pkg_set summary "Terminal multiplexer"
pkg_set webpage "https://tmux.github.io"
pkg_set src.url "https://github.com/tmux/tmux/releases/download/3.3/tmux-3.3.tar.gz"
pkg_set src.sha "b2382ac391f6a1c5b93293016cdc9488337d9a04b9d611ae05eac164740351dc"
pkg_set license "ISC"
pkg_set dep.pkg "ncurses libevent utf8proc libglob libgetdtablesize"
pkg_set bsystem "configure"

pkg_set sdk.api 26
# pty.h: int forkpty(int* _Nonnull __master_fd, char* _Nullable __slave_name, const struct termios* _Nullable __termios_ptr, const struct winsize* _Nullable __winsize_ptr) __INTRODUCED_IN(23);

build() {
    configure \
        --enable-utf8proc \
        --disable-static \
        ac_cv_search_forkpty='-lc' \
        ac_cv_search_utf8proc_charwidth='-lutf8proc'
}
