package set summary "Command-line tool for sharing terminal over the web"
package set webpage "https://tsl0922.github.io/ttyd"
package set src.git "https://github.com/tsl0922/ttyd.git"
package set src.url "https://github.com/tsl0922/ttyd/archive/1.6.3.tar.gz"
package set src.sum "1116419527edfe73717b71407fb6e06f46098fc8a8e6b0bb778c4c75dc9f64b9"
package set license "MIT"
package set dep.pkg "json-c libwebsockets"
package set dep.cmd "pkg-config"
package set bsystem "cmake"

# int forkpty(int* _Nonnull __master_fd, char* _Nullable __slave_name, const struct termios* _Nullable __termios_ptr, const struct winsize* _Nullable __winsize_ptr) __INTRODUCED_IN(23);
package set sdk.api 23

prepare() {
    sed_in_place '/LINK_LIBS util/d' CMakeLists.txt
}

build() {
    cmakew \
        -DZLIB_INCLUDE_DIR="$zlib_INCLUDE_DIR" \
        -DZLIB_LIBRARY_RELEASE="$zlib_LIBRARY_DIR/libz.a" \
        -DLIBUV_INCLUDE_DIR="$libuv_INCLUDE_DIR" \
        -DLIBUV_LIBRARY="$libuv_LIBRARY_DIR/libuv.a" \
        -DJSON-C_INCLUDE_DIR="$json_c_INCLUDE_DIR/json-c" \
        -DJSON-C_LIBRARY="$json_c_LIBRARY_DIR/libjson-c.a"
}
