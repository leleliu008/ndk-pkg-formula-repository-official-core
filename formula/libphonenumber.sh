pkg_set summary "C++ Phone Number library by Google"
pkg_set git.url "https://github.com/google/libphonenumber.git"
pkg_set src.url "https://github.com/google/libphonenumber/archive/v8.12.39.tar.gz"
pkg_set src.sha "ff16330f130917e42bc0b1a7efe5e4fba46633bfa62e35268acec855e17e385c"
pkg_set license "Apache-2.0|LICENSE|https://raw.githubusercontent.com/google/libphonenumber/master/LICENSE BSD-3-Clause|LICENSE.Chromium|https://raw.githubusercontent.com/google/libphonenumber/master/LICENSE.Chromium"
                     BSD-3-Clause;LICENSE.Chromium;https://raw.githubusercontent.com/google/libphonenumber/master/LICENSE.Chromium"
pkg_set dep.pkg "boost icu4c protobuf googletest"
pkg_set dep.cmd "pkg-config protoc"
pkg_set bscript "cpp"

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
