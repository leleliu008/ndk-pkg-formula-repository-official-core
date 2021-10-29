package set summary "Ultralightweight JSON parser in ANSI C"
package set src.git "https://github.com/DaveGamble/cJSON.git"
package set src.url "https://github.com/DaveGamble/cJSON/archive/v1.7.15.tar.gz"
package set src.sum "5308fd4bd90cef7aa060558514de6a1a4a0819974a26e6ed13973c5f624c24b2"
package set license "MIT"
package set bsystem "cmake"

build() {
    cmakew \
        -DENABLE_CJSON_UTILS=ON \
        -DENABLE_CJSON_TEST=OFF \
        -DBUILD_SHARED_AND_STATIC_LIBS=ON
}
