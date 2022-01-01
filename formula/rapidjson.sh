package set summary "JSON parser/generator for C++ with SAX and DOM style APIs"
package set webpage "http://rapidjson.org/"
package set git.url "https://github.com/Tencent/rapidjson.git"
package set src.url "https://github.com/Tencent/rapidjson/archive/refs/tags/v1.1.0.tar.gz"
package set src.sum "bf7ced29704a1e696fbccf2a2b4ea068e7774fa37f6d7dd4039d0787f8bed98e"
package set license "MIT"
package set bsystem "cmake"

build() {
    cmakew \
        -DRAPIDJSON_BUILD_DOC=OFF \
        -DRAPIDJSON_BUILD_TESTS=OFF \
        -DRAPIDJSON_BUILD_EXAMPLES=OFF
}
