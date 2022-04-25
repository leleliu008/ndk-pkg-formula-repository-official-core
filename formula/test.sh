pkg_set summary "C test project"
pkg_set git.url "https://github.com/leleliu008/C.git"
pkg_set license "Unlicense"
pkg_set bsystem "cmake"
pkg_set version "20.5"
pkg_set sdk.api 30

build0() {
    :
}

build2() {
    touch libtest.so.1.9 &&
    install_libs libtest.so.1.9
}
