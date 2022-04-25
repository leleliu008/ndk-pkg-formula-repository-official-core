pkg_set summary "Small build system for use with gyp or CMake"
pkg_set webpage "https://ninja-build.org"
pkg_set git.url "https://github.com/ninja-build/ninja.git"
pkg_set src.url "https://github.com/ninja-build/ninja/archive/v1.10.2.tar.gz"
pkg_set src.sha "ce35865411f0490368a8fc383f29071de6690cbadc27704734978221f25e2bed"
pkg_set license "Apache-2.0"
pkg_set bsystem "cmake"

# spawn.h: int posix_spawn(pid_t* __pid, const char* __path, const posix_spawn_file_actions_t* __actions, const posix_spawnattr_t* __attr, char* const __argv[], char* const __env[]) __INTRODUCED_IN(28);
pkg_set sdk.api 28

prepare() {
    sed_in_place '/CMAKE_INTERPROCEDURAL_OPTIMIZATION_RELEASE/d' CMakeLists.txt
}
