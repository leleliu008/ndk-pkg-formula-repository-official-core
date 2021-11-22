package set summary "C routines to compute the Discrete Fourier Transform"
package set webpage "http://www.fftw.org"
package set src.url "http://fftw.org/fftw-3.3.10.tar.gz"
package set src.sum "56c932549852cddcfafdab3820b0200c7742675be92179e59e6215b340e26467"
package set bsystem "configure"

build() {
    configure --enable-threads
}
