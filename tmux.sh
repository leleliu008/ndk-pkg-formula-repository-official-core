summary "Terminal multiplexer"
webpage "https://tmux.github.io"
src_url "https://github.com/tmux/tmux/releases/download/3.1c/tmux-3.1c.tar.gz"
src_sum "918f7220447bef33a1902d4faff05317afd9db4ae1c9971bef5c787ac6c88386"
license "ISC"
bsystem "configure"
depends "ncurses libevent utf8proc libglob"
ldflags "-lglob"

# pty.h: int forkpty(int* _Nonnull __master_fd, char* _Nullable __slave_name, const struct termios* _Nullable __termios_ptr, const struct winsize* _Nullable __winsize_ptr) __INTRODUCED_IN(23);
# char* nl_langinfo(nl_item __item) __INTRODUCED_IN(26);
sdk_api 26

build() {
    include_stub_getdtablesize &&
    configure \
        --enable-utf8proc \
        --disable-static \
        ac_cv_search_forkpty='-lc' \
        ac_cv_search_utf8proc_charwidth='-lutf8proc'
}
