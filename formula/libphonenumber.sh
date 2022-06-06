pkg_set summary "C++ Phone Number library by Google"
pkg_set git.url "https://github.com/google/libphonenumber.git"
pkg_set src.url "https://github.com/google/libphonenumber/archive/v8.12.49.tar.gz"
pkg_set src.sha "e328b46ca043fb6b3f1044b1e639967845bfb24c823ae6345ad54a1d50cdf187"
pkg_set dep.pkg "boost icu4c protobuf googletest abseil"
pkg_set dep.cmd "pkg-config protoc"
pkg_set bscript "cpp"
pkg_set license "Apache-2.0|LICENSE|https://raw.githubusercontent.com/google/libphonenumber/master/LICENSE BSD-3-Clause|LICENSE.Chromium|https://raw.githubusercontent.com/google/libphonenumber/master/LICENSE.Chromium"

prepare() {
    sed_in_place '/absl::/i find_package(absl REQUIRED)' CMakeLists.txt
    sed_in_place 's|CMAKE_CXX_STANDARD 11|CMAKE_CXX_STANDARD 17|' CMakeLists.txt
}

build() {
    cmakew \
        -DBUILD_GEOCODER=OFF \
        -DBUILD_STATIC_LIB=ON \
        -DUSE_POSIX_THREAD=ON \
        -DUSE_ICU_REGEXP=ON \
        -DUSE_BOOST=ON \
        -DUSE_RE2=OFF
}
