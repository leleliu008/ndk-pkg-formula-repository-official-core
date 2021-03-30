summary "Alternative to backtracking PCRE-style regular expression engines"
version "2021-02-02"
src_git "https://github.com/google/re2.git"
src_url "https://github.com/google/re2/archive/$(version).tar.gz"
src_sum "1396ab50c06c1a8885fb68bf49a5ecfd989163015fd96699a180d6414937f33f"
license "BSD-3-Clause"
bsystem "cmake"

build() {
    cmake -DRE2_BUILD_TESTING=OFF
}
