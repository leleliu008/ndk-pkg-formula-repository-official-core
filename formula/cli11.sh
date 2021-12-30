package set summary "Simple and intuitive command-line parser for C++11"
package set webpage "https://cliutils.github.io/CLI11/book/"
package set src.git "https://github.com/CLIUtils/CLI11.git"
package set src.url "https://github.com/CLIUtils/CLI11/archive/v2.1.2.tar.gz"
package set src.sum "26291377e892ba0e5b4972cdfd4a2ab3bf53af8dac1f4ea8fe0d1376b625c8cb"
package set license "BSD-3-Clause"
package set bsystem "cmake"

build() {
    cmakew \
        -DCLI11_BUILD_DOCS=OFF \
        -DCLI11_BUILD_TESTS=OFF
}
