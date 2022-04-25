pkg_set summary "C routines to compute the Discrete Fourier Transform"
pkg_set webpage "http://www.fftw.org"
pkg_set src.url "http://fftw.org/fftw-3.3.10.tar.gz"
pkg_set src.sha "56c932549852cddcfafdab3820b0200c7742675be92179e59e6215b340e26467"
pkg_set license "GPL-2.0-or-later"
pkg_set bsystem "configure"

build() {
    configure --enable-threads
}
