package set summary "User-friendly command-line shell for UNIX-like operating systems"
package set webpage "https://fishshell.com"
package set git.url "https://github.com/fish-shell/fish-shell.git"
package set src.url "https://github.com/fish-shell/fish-shell/releases/download/3.3.1/fish-3.3.1.tar.xz"
package set src.sum "b5b4ee1a5269762cbbe993a4bd6507e675e4100ce9bbe84214a5eeb2b19fae89"
package set license "GPL-2.0"
package set dep.pkg "pcre2 readline"
package set bsystem "cmake"

# int posix_spawn(pid_t* __pid, const char* __path, const posix_spawn_file_actions_t* __actions, const posix_spawnattr_t* __attr, char* const __argv[], char* const __env[]) __INTRODUCED_IN(28);
package set sdk.api 28

build() {
    cmakew -DWITH_GETTEXT=OFF
}
