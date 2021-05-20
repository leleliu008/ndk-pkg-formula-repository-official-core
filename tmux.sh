package set summary "Terminal multiplexer"
package set webpage "https://tmux.github.io"
package set src.url "https://github.com/tmux/tmux/releases/download/3.1c/tmux-3.1c.tar.gz"
package set src.sum "918f7220447bef33a1902d4faff05317afd9db4ae1c9971bef5c787ac6c88386"
package set license "ISC"
package set bsystem "configure"
package set dep.pkg "ncurses libevent utf8proc libglob"
package set ldflags "-lglob"

# pty.h: int forkpty(int* _Nonnull __master_fd, char* _Nullable __slave_name, const struct termios* _Nullable __termios_ptr, const struct winsize* _Nullable __winsize_ptr) __INTRODUCED_IN(23);
package set sdk.api 26

build() {
    include_stub_getdtablesize &&
    configure \
        --enable-utf8proc \
        --disable-static \
        ac_cv_search_forkpty='-lc' \
        ac_cv_search_utf8proc_charwidth='-lutf8proc'
}
