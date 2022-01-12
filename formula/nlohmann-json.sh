package set summary "JSON for modern C++"
package set git.url "https://github.com/nlohmann/json.git"
package set src.url "https://github.com/nlohmann/json/archive/v3.10.5.tar.gz"
package set src.sum "5daca6ca216495edf89d167f808d1d03c4a4d929cef7da5e10f135ae1540c7e4"
package set license "MIT"
package set bsystem "cmake"

build() {
    cmakew \
        -DJSON_BuildTests=OFF \
        -DJSON_MultipleHeaders=ON

}
