package set summary "Google's C++ Testing and Mocking Framework"
package set src.git "https://github.com/google/googletest.git"
package set src.url "https://github.com/google/googletest/archive/release-1.10.0.tar.gz"
package set src.sum "9dc9157a9a1551ec7a7e43daea9a694a0bb5fb8bec81235d8a1e6ef64c716dcb"
package set license "BSD-3-Clause"
package set bsystem "cmake"

build() {
    cmakew \
        -DBUILD_GMOCK=ON \
        -DINSTALL_GTEST=ON
}
