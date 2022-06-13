pkg_set summary "Static reflection for enums (to string, from string, iteration) for modern C++"
pkg_set git.url "https://github.com/Neargye/magic_enum.git"
pkg_set src.url "https://github.com/Neargye/magic_enum/archive/v0.8.0.tar.gz"
pkg_set src.sha "5e7680e877dd4cf68d9d0c0e3c2a683b432a9ba84fc1993c4da3de70db894c3c"
pkg_set license "MIT"
pkg_set bsystem "cmake"

build() {
    cmakew \
        -DMAGIC_ENUM_OPT_BUILD_TESTS=OFF \
        -DMAGIC_ENUM_OPT_BUILD_EXAMPLES=ON \
        -DMAGIC_ENUM_OPT_ENABLE_NONASCII=ON \
        -DMAGIC_ENUM_OPT_INSTALL=ON
}
