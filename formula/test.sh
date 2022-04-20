package set summary "C test project"
package set git.url "https://github.com/leleliu008/C.git"
package set license "Unlicense"
package set bsystem "cmake"
package set version "20.5"
package set sdk.api 30

build0() {
    :
}

build2() {
    touch libtest.so.1.9 &&
    install_libs libtest.so.1.9
}
