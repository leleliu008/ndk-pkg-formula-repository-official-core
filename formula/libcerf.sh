package set summary "Numeric library for complex error functions"
package set src.git "https://jugit.fz-juelich.de/mlz/libcerf.git"
package set src.url "https://jugit.fz-juelich.de/mlz/libcerf/-/archive/v1.17/libcerf-v1.17.tar.gz"
package set src.sum "b1916b292cb37f2d0d0b699fbcf0fe260cca97ec7266ea20ff0c5cd8ef2eaab4"
package set license "MIT"
package set bsystem "cmake"

# complex.h: double complex cexp(double complex __z) __INTRODUCED_IN(23);
package set sdk.api 23

build() {
    cmakew \
        -DPEDANTIC=ON \
        -DWERROR=OFF \
        -DLIB_MAN=ON \
        -DLIB_RUN=ON \
        -DCERF_CPP=OFF
}
