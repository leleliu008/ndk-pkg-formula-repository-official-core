pkg_set summary "Alternative to backtracking PCRE-style regular expression engines"
pkg_set git.url "https://github.com/google/re2.git"
pkg_set src.url "https://github.com/google/re2/archive/2022-06-01.tar.gz"
pkg_set version "20220601"
pkg_set src.sha "f89c61410a072e5cbcf8c27e3a778da7d6fd2f2b5b1445cd4f4508bee946ab0f"
pkg_set license "BSD-3-Clause"
pkg_set bsystem "cmake"

build() {
    cmakew -DRE2_BUILD_TESTING=OFF
}
