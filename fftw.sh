package set summary "C routines to compute the Discrete Fourier Transform"
package set webpage "http://www.fftw.org"
package set src.url "http://fftw.org/fftw-3.3.8.tar.gz"
package set src.sum "6113262f6e92c5bd474f2875fa1b01054c4ad5040f6b0da7c03c98821d9ae303"
package set bsystem "configure"

build() {
    configure --enable-threads
}
