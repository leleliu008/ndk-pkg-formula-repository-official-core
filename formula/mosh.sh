pkg_set summary "Remote terminal application"
pkg_set webpage "https://mosh.org"
pkg_set src.url "https://mosh.org/mosh-1.3.2.tar.gz"
pkg_set src.sha "da600573dfa827d88ce114e0fed30210689381bbdcff543c931e4d6a2e851216"
pkg_set git.url "https://github.com/mobile-shell/mosh.git"
pkg_set license "GPL-3.0-or-later"
pkg_set dep.pkg "zlib openssl ncurses protobuf liblanginfo"
pkg_set dep.cmd "pkg-config"
pkg_set bsystem "configure"

pkg_set sdk.api 23
# pty.h: int forkpty(int* _Nonnull __master_fd, char* _Nullable __slave_name, const struct termios* _Nullable __termios_ptr, const struct winsize* _Nullable __winsize_ptr) __INTRODUCED_IN(23);

prepare() {
    sed_in_place 's|if ( bind|if (::bind|' src/network/network.cc
}

build() {
    configure --with-ncurses
}
