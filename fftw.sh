summary "C routines to compute the Discrete Fourier Transform"
webpage "http://www.fftw.org"
src_url "http://fftw.org/fftw-3.3.8.tar.gz"
src_sum "6113262f6e92c5bd474f2875fa1b01054c4ad5040f6b0da7c03c98821d9ae303"

build() {
    configure --enable-threads
}

build2() {
    cmake
}
