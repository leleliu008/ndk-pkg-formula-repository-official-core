package set summary "C++ Phone Number library by Google"
package set git.url "https://github.com/google/libphonenumber.git"
package set src.url "https://github.com/google/libphonenumber/archive/v8.12.39.tar.gz"
package set src.sum "ff16330f130917e42bc0b1a7efe5e4fba46633bfa62e35268acec855e17e385c"
package set license "Apache-2.0"
package set dep.pkg "boost icu4c protobuf googletest"
package set dep.cmd "pkg-config protoc"
package set ldflags "-llog -lz -licudata -lstdc++"
package set bscript "cpp"

prepare() {
    sed_in_place '/pthread/d' CMakeLists.txt
}

build() {
    cmakew \
        -DBUILD_GEOCODER=OFF \
        -DBUILD_STATIC_LIB=ON \
        -DUSE_POSIX_THREAD=ON \
        -DUSE_ICU_REGEXP=ON \
        -DUSE_RE2=OFF \
        -DUSE_BOOST=ON
}
