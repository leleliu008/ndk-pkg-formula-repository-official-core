package set summary "Resource monitor. C++ version and continuation of bashtop and bpytop"
package set git.url "https://github.com/aristocratos/btop.git"
package set src.url "https://github.com/aristocratos/btop/archive/refs/tags/v1.2.5.tar.gz"
package set src.sum "93ff23276f2c626282037766542543dad5964fb6117c7902c4a4899607f8c95f"
package set license "Apache-2.0"
package set bsystem "make"
package set binbstd "yes"

prepare() {
    sed_in_place '/-flto=/d' Makefile
}

build() {
    makew clean
    makew CXX=$CXX STRIP=false PLATFORM=Linux ARCH=$TARGET_OS_ARCH
    makew install PREFIX=$TARGET_INSTALL_DIR
}
