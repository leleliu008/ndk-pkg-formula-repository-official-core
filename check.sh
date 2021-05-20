package set summary "C unit testing framework"
package set webpage "https://libcheck.github.io/check"
package set src.url "https://github.com/libcheck/check/releases/download/0.15.1/check-0.15.1.tar.gz"
package set src.sum "c1cc3d64975c0edd8042ab90d881662f1571278f8ea79d8e3c2cc877dac60001"
package set license "LGPL-2.1"
package set bsystem "cmake"

build() {
    cmakew \
    -DCHECK_ENABLE_GCOV=OFF \
    -DINSTALL_CHECKMK=ON
}
