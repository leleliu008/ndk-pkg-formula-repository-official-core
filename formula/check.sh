package set summary "C unit testing framework"
package set webpage "https://libcheck.github.io/check"
package set src.git "https://github.com/libcheck/check.git"
package set src.url "https://github.com/libcheck/check/releases/download/0.15.2/check-0.15.2.tar.gz"
package set src.sum "a8de4e0bacfb4d76dd1c618ded263523b53b85d92a146d8835eb1a52932fa20a"
package set license "LGPL-2.1"
package set bsystem "cmake"

build() {
    cmakew \
        -DCHECK_ENABLE_GCOV=OFF \
        -DINSTALL_CHECKMK=ON
}
