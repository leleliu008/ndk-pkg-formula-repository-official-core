summary "Alternative to backtracking PCRE-style regular expression engines"
webpage "https://github.com/google/re2"
version "2020-11-01"
src_url "https://github.com/google/re2/archive/$(version).tar.gz"
src_sum "8903cc66c9d34c72e2bc91722288ebc7e3ec37787ecfef44d204b2d6281954d7"
license "BSD-3-Clause"
bsystem "cmake-make"

build() {
    cmake -DRE2_BUILD_TESTING=OFF &&
    make -C "$SOURCE_DIR" common-install prefix="$ABI_INSTALL_DIR"
}
