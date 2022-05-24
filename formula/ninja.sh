pkg_set summary "Small build system for use with gyp or CMake"
pkg_set webpage "https://ninja-build.org"
pkg_set git.url "https://github.com/ninja-build/ninja.git"
pkg_set src.url "https://github.com/ninja-build/ninja/archive/v1.11.0.tar.gz"
pkg_set src.sha "3c6ba2e66400fe3f1ae83deb4b235faf3137ec20bd5b08c29bfc368db143e4c6"
pkg_set license "Apache-2.0"
pkg_set bsystem "cmake"

# spawn.h: int posix_spawn(pid_t* __pid, const char* __path, const posix_spawn_file_actions_t* __actions, const posix_spawnattr_t* __attr, char* const __argv[], char* const __env[]) __INTRODUCED_IN(28);
pkg_set sdk.api 28

prepare() {
    sed_in_place '/CMAKE_INTERPROCEDURAL_OPTIMIZATION_RELEASE/d' CMakeLists.txt
}
