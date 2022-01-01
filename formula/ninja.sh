package set summary "Small build system for use with gyp or CMake"
package set webpage "https://ninja-build.org"
package set git.url "https://github.com/ninja-build/ninja.git"
package set src.url "https://github.com/ninja-build/ninja/archive/v1.10.2.tar.gz"
package set src.sum "ce35865411f0490368a8fc383f29071de6690cbadc27704734978221f25e2bed"
package set license "Apache-2.0"
package set bsystem "cmake"

# spawn.h: int posix_spawn(pid_t* __pid, const char* __path, const posix_spawn_file_actions_t* __actions, const posix_spawnattr_t* __attr, char* const __argv[], char* const __env[]) __INTRODUCED_IN(28);
package set sdk.api 28

prepare() {
    sed_in_place '/CMAKE_INTERPROCEDURAL_OPTIMIZATION_RELEASE/d' CMakeLists.txt
}
