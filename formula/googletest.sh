package set summary "Google's C++ Testing and Mocking Framework"
package set git.url "https://github.com/google/googletest.git"
package set src.url "https://github.com/google/googletest/archive/release-1.11.0.tar.gz"
package set src.sum "b4870bf121ff7795ba20d20bcdd8627b8e088f2d1dab299a031c1034eddc93d5"
package set license "BSD-3-Clause"
package set bsystem "cmake"

build() {
    cmakew \
        -DBUILD_GMOCK=ON \
        -DINSTALL_GTEST=ON
}
