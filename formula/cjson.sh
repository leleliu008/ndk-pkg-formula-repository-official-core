package set summary "Ultralightweight JSON parser in ANSI C"
package set src.git "https://github.com/DaveGamble/cJSON.git"
package set src.url "https://github.com/DaveGamble/cJSON/archive/v1.7.14.tar.gz"
package set src.sum "fb50a663eefdc76bafa80c82bc045af13b1363e8f45cec8b442007aef6a41343"
package set license "MIT"
package set bsystem "cmake"

build() {
    cmakew \
        -DENABLE_CJSON_UTILS=ON \
        -DENABLE_CJSON_TEST=OFF \
        -DBUILD_SHARED_AND_STATIC_LIBS=ON
}
