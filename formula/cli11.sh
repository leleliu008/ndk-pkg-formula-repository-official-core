package set summary "Simple and intuitive command-line parser for C++11"
package set webpage "https://cliutils.github.io/CLI11/book/"
package set git.url "https://github.com/CLIUtils/CLI11.git"
package set src.url "https://github.com/CLIUtils/CLI11/archive/v2.2.0.tar.gz"
package set src.sum "d60440dc4d43255f872d174e416705f56ba40589f6eb07727f76376fb8378fd6"
package set license "BSD-3-Clause"
package set bsystem "cmake"

build() {
    cmakew \
        -DCLI11_BUILD_DOCS=OFF \
        -DCLI11_BUILD_TESTS=OFF
}
