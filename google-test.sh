summary  "Google's C++ Testing and Mocking Framework"
homepage "https://github.com/google/googletest"
url      "https://github.com/google/googletest/archive/release-1.10.0.tar.gz"
sha256   "9dc9157a9a1551ec7a7e43daea9a694a0bb5fb8bec81235d8a1e6ef64c716dcb"
license  "BSD-3-Clause"

build() {
    cmake \
        -DBUILD_GMOCK=ON \
        -DINSTALL_GTEST=ON
}
