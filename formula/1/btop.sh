pkg_set summary "Resource monitor. C++ version and continuation of bashtop and bpytop"
pkg_set git.url "https://github.com/aristocratos/btop.git"
pkg_set src.url "https://github.com/aristocratos/btop/archive/refs/tags/v1.2.5.tar.gz"
pkg_set src.sha "93ff23276f2c626282037766542543dad5964fb6117c7902c4a4899607f8c95f"
pkg_set license "Apache-2.0"
pkg_set bsystem "gmake"
pkg_set binbstd "yes"

prepare() {
    sed_in_place '/-flto=/d' Makefile
}

build() {
    gmakew clean
    gmakew CXX=$CXX STRIP=false PLATFORM=Linux ARCH=$TARGET_OS_ARCH
    gmakew install PREFIX=$TARGET_INSTALL_DIR
}
