summary "Open-source formatting library for C++"
webpage "https://fmt.dev"
src_url "https://github.com/fmtlib/fmt/archive/7.1.2.tar.gz"
src_sum "4119a1c34dff91631e1d0a3707428f764f1ea22fe3cd5e70af5b4ccd5513831c"
license "MIT"
bsystem "cmake"

build() {
    cmake \
        -DFMT_FUZZ=OFF \
        -DFMT_TEST=OFF \
        -DFMT_INSTALL=ON \
        -DFMT_WERROR=OFF \
        -DFMT_PEDANTIC=OFF
}
