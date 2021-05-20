package set summary "User-friendly command-line shell for UNIX-like operating systems"
package set webpage "https://fishshell.com"
package set src.url "https://github.com/fish-shell/fish-shell/releases/download/3.1.2/fish-3.1.2.tar.gz"
package set src.sum "d5b927203b5ca95da16f514969e2a91a537b2f75bec9b21a584c4cd1c7aa74ed"
package set license "GPL-2.0"
package set bsystem "cmake"
package set dep.pkg "pcre2 bzip2 ncurses readline"

# int posix_spawn(pid_t* __pid, const char* __path, const posix_spawn_file_actions_t* __actions, const posix_spawnattr_t* __attr, char* const __argv[], char* const __env[]) __INTRODUCED_IN(28);
package set sdk.api 28

build() {
    cmakew \
        -DWITH_GETTEXT=OFF \
        -DPCRE2_INCLUDE_DIR="$pcre2_INCLUDE_DIR" \
        -DPCRE2_LIB="$pcre2_LIBRARY_DIR/libpcre2-32.so" \
        -DZLIB_LIBRARY_RELEASE="$zlib_LIBRARY_DIR/libz.so" \
        -DBZIP2_INCLUDE_DIR="$bzip2_INCLUDE_DIR" \
        -DBZIP2_LIBRARY_RELEASE="$bzip2_LIBRARY_DIR/libbz2.so" \
        -DREADLINE_INCLUDE_DIR="$readline_INCLUDE_DIR" \
        -DREADLINE_LIBRARY="$readline_LIBRARY_DIR/libreadline.so" \
        -DCURSES_INCLUDE_PATH="$ncurses_INCLUDE_DIR" \
        -DCURSES_NCURSES_LIBRARY="$ncurses_LIBRARY_DIR/libncurses.so" \
        -DCURSES_FORM_LIBRARY="$ncurses_LIBRARY_DIR/libform.so"
}
