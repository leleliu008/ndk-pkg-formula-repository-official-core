pkg_set summary "Terminal multiplexer"
pkg_set webpage "https://tmux.github.io"
pkg_set src.url "https://github.com/tmux/tmux/releases/download/3.1c/tmux-3.1c.tar.gz"
pkg_set src.sha "918f7220447bef33a1902d4faff05317afd9db4ae1c9971bef5c787ac6c88386"
pkg_set license "ISC"
pkg_set bsystem "configure"
pkg_set dep.pkg "ncurses libevent utf8proc libglob"
pkg_set ldflags "-lglob"
pkg_set sdk.api 26
# pty.h: int forkpty(int* _Nonnull __master_fd, char* _Nullable __slave_name, const struct termios* _Nullable __termios_ptr, const struct winsize* _Nullable __winsize_ptr) __INTRODUCED_IN(23);

build() {
    include_stub_getdtablesize &&
    configure \
        --enable-utf8proc \
        --disable-static \
        ac_cv_search_forkpty='-lc' \
        ac_cv_search_utf8proc_charwidth='-lutf8proc'
}
