summary "C unit testing framework"
webpage "https://libcheck.github.io/check"
src_url "https://github.com/libcheck/check/releases/download/0.15.1/check-0.15.1.tar.gz"
src_sum "c1cc3d64975c0edd8042ab90d881662f1571278f8ea79d8e3c2cc877dac60001"
license "LGPL-2.1"

build() {
    cmake \
    -DCHECK_ENABLE_GCOV=OFF \
    -DINSTALL_CHECKMK=ON
}
