package set summary "C++ libraries for cloud-based client-server communication"
package set git.url "https://github.com/Microsoft/cpprestsdk.git"
package set src.url "https://github.com/microsoft/cpprestsdk/archive/refs/tags/2.10.18.tar.gz"
package set src.sum "6bd74a637ff182144b6a4271227ea8b6b3ea92389f88b25b215e6f94fd4d41cb"
package set dep.pkg "websocketpp boost"
package set dep.cmd "pkg-config"
package set bsystem "cmake"
package set ldflags "-llog"

prepare() {
    sed_in_place 's|ANDROID|XXXX|' Release/cmake/cpprest_find_openssl.cmake
}

build() {
    cmakew \
        -DBUILD_TESTS=OFF \
        -DBUILD_SAMPLES=OFF
}
