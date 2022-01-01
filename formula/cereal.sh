package set summary "C++11 library for serialization"
package set webpage "https://uscilab.github.io/cereal/"
package set git.url "https://github.com/USCiLab/cereal.git"
package set src.url "https://github.com/USCiLab/cereal/archive/v1.3.0.tar.gz"
package set src.sum "329ea3e3130b026c03a4acc50e168e7daff4e6e661bc6a7dfec0d77b570851d5"
package set license "BSD-3-Clause"
package set bsystem "cmake"

build() {
    cmakew -DCEREAL_INSTALL=ON -DJUST_INSTALL_CEREAL=ON
}
