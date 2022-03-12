package set summary "Implementation of the Actor Model for C++"
package set webpage "https://www.actor-framework.org/"
package set git.url "https://github.com/actor-framework/actor-framework.git"
package set src.url "https://github.com/actor-framework/actor-framework/archive/0.18.5.tar.gz"
package set src.sum "4c96f896f000218bb65890b4d7175451834add73750d5f33b0c7fe82b7d5a679"
package set license "BSD-3-Clause"
package set dep.pkg "openssl"
package set bsystem "cmake"
package set xxflags "-std=c++17"

build() {
    cmakew -DCAF_ENABLE_TESTING=OFF
}
