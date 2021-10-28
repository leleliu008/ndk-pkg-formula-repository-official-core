package set summary "Open-source formatting library for C++"
package set webpage "https://fmt.dev"
package set src.git "https://github.com/fmtlib/fmt.git"
package set src.url "https://github.com/fmtlib/fmt/archive/8.0.1.tar.gz"
package set src.sum "b06ca3130158c625848f3fb7418f235155a4d389b2abc3a6245fb01cb0eb1e01"
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
