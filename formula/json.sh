package set summary "JSON for modern C++"
package set webpage "https://github.com/nlohmann/json.git"
package set src.url "https://github.com/nlohmann/json/archive/v3.9.1.tar.gz"
package set src.sum "4cf0df69731494668bdd6460ed8cb269b68de9c19ad8c27abc24cd72605b2d5b"
package set license "MIT"
package set bsystem "cmake"

build() {
    cmakew \
        -DJSON_BuildTests=OFF \
        -DJSON_MultipleHeaders=ON
}
