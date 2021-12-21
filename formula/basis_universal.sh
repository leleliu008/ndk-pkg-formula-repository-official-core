package set summary "Basis Universal GPU texture codec command-line compression tool"
package set src.git "https://github.com/BinomialLLC/basis_universal"
package set src.url "https://github.com/BinomialLLC/basis_universal/archive/refs/tags/v1.15_rel2.tar.gz"
package set version "1.15"
package set src.sum "c7ada78211517176ac5d38850337500d132813e2c0af3bf338e66cac71ee5153"
package set license "Apache-2.0"
package set bsystem "cmake"

prepare() {
    sed_in_place '/#include <vector>/a #define ftello(f) ftell(f)' encoder/basisu_enc.cpp
}
