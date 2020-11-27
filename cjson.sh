summary  "Ultralightweight JSON parser in ANSI C"
homepage "https://github.com/DaveGamble/cJSON"
url      "https://github.com/DaveGamble/cJSON/archive/v1.7.14.tar.gz"
sha256   "fb50a663eefdc76bafa80c82bc045af13b1363e8f45cec8b442007aef6a41343"
license  "MIT"

build() {
    cmake \
        -DENABLE_CJSON_UTILS=ON \
        -DENABLE_CJSON_TEST=OFF \
        -DBUILD_SHARED_AND_STATIC_LIBS=ON
}
