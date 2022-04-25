pkg_set summary "JSON for modern C++"
pkg_set git.url "https://github.com/nlohmann/json.git"
pkg_set src.url "https://github.com/nlohmann/json/archive/v3.10.5.tar.gz"
pkg_set src.sha "5daca6ca216495edf89d167f808d1d03c4a4d929cef7da5e10f135ae1540c7e4"
pkg_set license "MIT"
pkg_set bsystem "cmake"

build() {
    cmakew \
        -DJSON_BuildTests=OFF \
        -DJSON_MultipleHeaders=ON
}
