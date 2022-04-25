pkg_set summary "C++11 library for serialization"
pkg_set webpage "https://uscilab.github.io/cereal/"
pkg_set git.url "https://github.com/USCiLab/cereal.git"
pkg_set src.url "https://github.com/USCiLab/cereal/archive/v1.3.2.tar.gz"
pkg_set src.sha "16a7ad9b31ba5880dac55d62b5d6f243c3ebc8d46a3514149e56b5e7ea81f85f"
pkg_set license "BSD-3-Clause;LICENSE;https://raw.githubusercontent.com/USCiLab/cereal/master/LICENSE"
pkg_set bsystem "cmake"

build() {
    cmakew -DCEREAL_INSTALL=ON -DJUST_INSTALL_CEREAL=ON
}
