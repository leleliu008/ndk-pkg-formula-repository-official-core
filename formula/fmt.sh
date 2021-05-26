package set summary "Open-source formatting library for C++"
package set webpage "https://fmt.dev"
package set src.url "https://github.com/fmtlib/fmt/archive/7.1.2.tar.gz"
package set src.sum "4119a1c34dff91631e1d0a3707428f764f1ea22fe3cd5e70af5b4ccd5513831c"
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
