pkg_set summary "C unit testing framework"
pkg_set webpage "https://libcheck.github.io/check"
pkg_set git.url "https://github.com/libcheck/check.git"
pkg_set src.url "https://github.com/libcheck/check/releases/download/0.15.2/check-0.15.2.tar.gz"
pkg_set src.sha "a8de4e0bacfb4d76dd1c618ded263523b53b85d92a146d8835eb1a52932fa20a"
pkg_set license "LGPL-2.1-or-later|COPYING.LESSER|https://raw.githubusercontent.com/libcheck/check/master/COPYING.LESSER"
pkg_set bsystem "cmake"

build() {
    cmakew \
        -DCHECK_ENABLE_GCOV=OFF \
        -DINSTALL_CHECKMK=ON
}
