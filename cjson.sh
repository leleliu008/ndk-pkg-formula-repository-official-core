summary "Ultralightweight JSON parser in ANSI C"
src_git "https://github.com/DaveGamble/cJSON.git"
src_url "https://github.com/DaveGamble/cJSON/archive/v1.7.14.tar.gz"
src_sum "fb50a663eefdc76bafa80c82bc045af13b1363e8f45cec8b442007aef6a41343"
license "MIT"
bsystem "cmake"

build() {
    cmake \
        -DENABLE_CJSON_UTILS=ON \
        -DENABLE_CJSON_TEST=OFF \
        -DBUILD_SHARED_AND_STATIC_LIBS=ON
}
