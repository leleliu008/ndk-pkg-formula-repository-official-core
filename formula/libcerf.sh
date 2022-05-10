pkg_set summary "Numeric library for complex error functions"
pkg_set git.url "https://jugit.fz-juelich.de/mlz/libcerf.git"
pkg_set src.url "https://jugit.fz-juelich.de/mlz/libcerf/-/archive/v2.1/libcerf-v2.1.tar.gz"
pkg_set src.sha "8a1cd8b7fae04b82a95168252129b8c1baca098a285ff8d3f25781dead14b75a"
pkg_set license "MIT"
pkg_set bsystem "cmake"

# complex.h: double complex cexp(double complex __z) __INTRODUCED_IN(23);
pkg_set sdk.api 23

build() {
    cmakew \
        -DPEDANTIC=ON \
        -DWERROR=OFF \
        -DLIB_MAN=ON \
        -DLIB_RUN=ON \
        -DCERF_CPP=OFF
}
