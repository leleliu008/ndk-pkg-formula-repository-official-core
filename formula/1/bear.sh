pkg_set summary "Generate compilation database for clang tooling"
pkg_set git.url "https://github.com/rizsotto/Bear.git"
pkg_set src.url "https://github.com/rizsotto/Bear/archive/3.0.17.tar.gz"
pkg_set src.url "dir:///home/fpliu/Bear-3.0.17"
pkg_set src.sha "107f94e045d930e88f5f5b4b484c8df1bf4834722943525765c271e0b5b34b78"
pkg_set license "GPL-3.0-or-later"
pkg_set dep.pkg "fmt grpc nlohmann-json spdlog"
pkg_set dep.cmd "pkg-config"
pkg_set bsystem "cmake"

# spawn.h: int posix_spawnp(pid_t* __pid, const char* __file, const posix_spawn_file_actions_t* __actions, const posix_spawnattr_t* __attr, char* const __argv[], char* const __env[]) __INTRODUCED_IN(28);
pkg_set sdk.api 28

prepare() {
    #sed_in_place '/-DCMAKE_PREFIX_PATH/c \            -DCMAKE_FIND_ROOT_PATH:PATH=${CMAKE_FIND_ROOT_PATH}' CMakeLists.txt
    #sed_in_place '/HAVE_CONFSTR/c set(HAVE_CONFSTR 1)' source/CMakeLists.txt
    cat >> include.h <<EOF
#include<stdlib.h>
#include<string.h>
#define _CS_PATH 10
#define confstr(name, buf, len) strcpy(buf, "/bin:/usr/bin")
EOF
}

build() {
    cmakew \
        -DENABLE_UNIT_TESTS=OFF \
        -DENABLE_FUNC_TESTS=OFF
}
