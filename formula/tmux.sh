pkg_set summary "Terminal multiplexer"
pkg_set webpage "https://tmux.github.io"
pkg_set src.url "https://github.com/tmux/tmux/releases/download/3.3a/tmux-3.3a.tar.gz"
pkg_set src.sha "e4fd347843bd0772c4f48d6dde625b0b109b7a380ff15db21e97c11a4dcdf93f"
pkg_set license "ISC"
pkg_set dep.pkg "ncurses libevent utf8proc libglob liblanginfo libgetdtablesize"
pkg_set bsystem "configure"

pkg_set sdk.api 23
# pty.h: int forkpty(int* _Nonnull __master_fd, char* _Nullable __slave_name, const struct termios* _Nullable __termios_ptr, const struct winsize* _Nullable __winsize_ptr) __INTRODUCED_IN(23);

build() {
    configure \
        --enable-utf8proc \
        --disable-static \
        ac_cv_search_forkpty='-lc' \
        ac_cv_search_utf8proc_charwidth='-lutf8proc'
}
