pkg_set summary "Command-line tool for sharing terminal over the web"
pkg_set webpage "https://tsl0922.github.io/ttyd"
pkg_set git.url "https://github.com/tsl0922/ttyd.git"
pkg_set src.url "https://github.com/tsl0922/ttyd/archive/1.6.3.tar.gz"
pkg_set src.sha "1116419527edfe73717b71407fb6e06f46098fc8a8e6b0bb778c4c75dc9f64b9"
pkg_set license "MIT"
pkg_set dep.pkg "json-c libwebsockets"
pkg_set dep.cmd "pkg-config"
pkg_set bsystem "cmake"

# int forkpty(int* _Nonnull __master_fd, char* _Nullable __slave_name, const struct termios* _Nullable __termios_ptr, const struct winsize* _Nullable __winsize_ptr) __INTRODUCED_IN(23);
pkg_set sdk.api 23

prepare() {
    sed_in_place '/LINK_LIBS util/d' CMakeLists.txt
}
