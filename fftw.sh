summary  "C routines to compute the Discrete Fourier Transform"
homepage "http://www.fftw.org"
url      "http://fftw.org/fftw-3.3.8.tar.gz"
sha256   "6113262f6e92c5bd474f2875fa1b01054c4ad5040f6b0da7c03c98821d9ae303"

build() {
    configure --enable-threads
}

build2() {
    cmake
}
