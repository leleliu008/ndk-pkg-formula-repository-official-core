package set summary "JSON for modern C++"
package set git.url "https://github.com/nlohmann/json.git"
package set src.url "https://github.com/nlohmann/json/archive/v3.10.4.tar.gz"
package set src.sum "1155fd1a83049767360e9a120c43c578145db3204d2b309eba49fbbedd0f4ed3"
package set license "MIT"
package set bsystem "cmake"

build() {
    cmakew \
        -DJSON_BuildTests=OFF \
        -DJSON_MultipleHeaders=ON

}
