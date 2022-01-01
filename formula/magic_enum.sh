package set summary "Static reflection for enums (to string, from string, iteration) for modern C++"
package set git.url "https://github.com/Neargye/magic_enum.git"
package set src.url "https://github.com/Neargye/magic_enum/archive/v0.7.3.tar.gz"
package set src.sum "b8d0cd848546fee136dc1fa4bb021a1e4dc8fe98e44d8c119faa3ef387636bf7"
package set license "MIT"
package set bsystem "cmake"

build() {
    cmakew \
        -DMAGIC_ENUM_OPT_BUILD_TESTS=OFF \
        -DMAGIC_ENUM_OPT_BUILD_EXAMPLES=ON \
        -DMAGIC_ENUM_OPT_ENABLE_NONASCII=ON \
        -DMAGIC_ENUM_OPT_INSTALL=ON
}
