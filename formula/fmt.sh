package set summary "Open-source formatting library for C++"
package set webpage "https://fmt.dev"
package set git.url "https://github.com/fmtlib/fmt.git"
package set src.url "https://github.com/fmtlib/fmt/archive/8.1.1.tar.gz"
package set src.sum "3d794d3cf67633b34b2771eb9f073bde87e846e0d395d254df7b211ef1ec7346"
package set license "MIT"
package set bsystem "cmake"

build() {
    cmakew \
        -DFMT_FUZZ=OFF \
        -DFMT_TEST=OFF \
        -DFMT_INSTALL=ON \
        -DFMT_WERROR=OFF \
        -DFMT_PEDANTIC=OFF
}
