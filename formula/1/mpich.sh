pkg_set summary "Implementation of the MPI Message Passing Interface standard"
pkg_set webpage "https://www.mpich.org"
pkg_set git.url "https://github.com/pmodels/mpich.git"
pkg_set src.url "https://www.mpich.org/static/downloads/3.4.2/mpich-3.4.2.tar.gz"
pkg_set src.sha "5c19bea8b84e8d74cca5f047e82b147ff3fba096144270e3911ad623d6c587bf"
pkg_set license "mpich2"
pkg_set bsystem "configure"

build() {
    configure --disable-fortran
}
