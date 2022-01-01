package set summary "YAML parser and emitter written in C++ for YAML 1.2 spec"
package set git.url "https://github.com/jbeder/yaml-cpp.git"
package set src.url "https://github.com/jbeder/yaml-cpp/archive/yaml-cpp-0.6.3.tar.gz"
package set src.sum "77ea1b90b3718aa0c324207cb29418f5bced2354c2e483a9523d98c3460af1ed"
package set license "MIT"
package set bsystem "cmake"

build() {
    cmakew \
        -DYAML_CPP_BUILD_TESTS=OFF \
        -DYAML_CPP_BUILD_TOOLS=ON
}
