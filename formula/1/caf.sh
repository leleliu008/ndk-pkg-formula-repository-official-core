pkg_set summary "Implementation of the Actor Model for C++"
pkg_set webpage "https://www.actor-framework.org/"
pkg_set git.url "https://github.com/actor-framework/actor-framework.git"
pkg_set src.url "https://github.com/actor-framework/actor-framework/archive/0.18.5.tar.gz"
pkg_set src.sha "4c96f896f000218bb65890b4d7175451834add73750d5f33b0c7fe82b7d5a679"
pkg_set license "BSD-3-Clause"
pkg_set dep.pkg "openssl"
pkg_set bsystem "cmake"
pkg_set xxflags "-std=c++17"

build() {
    cmakew -DCAF_ENABLE_TESTING=OFF
}
