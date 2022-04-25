pkg_set summary "Ultralightweight JSON parser in ANSI C"
pkg_set git.url "https://github.com/DaveGamble/cJSON.git"
pkg_set src.url "https://github.com/DaveGamble/cJSON/archive/v1.7.15.tar.gz"
pkg_set src.sha "5308fd4bd90cef7aa060558514de6a1a4a0819974a26e6ed13973c5f624c24b2"
pkg_set license "MIT"
pkg_set bsystem "cmake"

build() {
    cmakew \
        -DENABLE_CJSON_UTILS=ON \
        -DENABLE_CJSON_TEST=OFF \
        -DBUILD_SHARED_AND_STATIC_LIBS=ON
}
