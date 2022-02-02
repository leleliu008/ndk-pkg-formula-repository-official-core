package set summary "C++11 library for serialization"
package set webpage "https://uscilab.github.io/cereal/"
package set git.url "https://github.com/USCiLab/cereal.git"
package set src.url "https://github.com/USCiLab/cereal/archive/v1.3.1.tar.gz"
package set src.sum "65ea6ddda98f4274f5c10fb3e07b2269ccdd1e5cbb227be6a2fd78b8f382c976"
package set license "BSD-3-Clause"
package set bsystem "cmake"

build() {
    cmakew -DCEREAL_INSTALL=ON -DJUST_INSTALL_CEREAL=ON
}
