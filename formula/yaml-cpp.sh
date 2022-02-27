package set summary "YAML parser and emitter written in C++ for YAML 1.2 spec"
package set git.url "https://github.com/jbeder/yaml-cpp.git"
package set src.url "https://github.com/jbeder/yaml-cpp/archive/yaml-cpp-0.7.0.tar.gz"
package set src.sum "43e6a9fcb146ad871515f0d0873947e5d497a1c9c60c58cb102a97b47208b7c3"
package set license "MIT"
package set bsystem "cmake"

build() {
    cmakew \
        -DYAML_CPP_BUILD_TESTS=OFF \
        -DYAML_CPP_BUILD_TOOLS=ON
}
