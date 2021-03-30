summary "Google's C++ Testing and Mocking Framework"
src_git "https://github.com/google/googletest.git"
src_url "https://github.com/google/googletest/archive/release-1.10.0.tar.gz"
src_sum "9dc9157a9a1551ec7a7e43daea9a694a0bb5fb8bec81235d8a1e6ef64c716dcb"
license "BSD-3-Clause"
bsystem "cmake"

build() {
    cmake \
        -DBUILD_GMOCK=ON \
        -DINSTALL_GTEST=ON
}
