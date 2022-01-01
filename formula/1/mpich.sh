package set summary "Implementation of the MPI Message Passing Interface standard"
package set webpage "https://www.mpich.org"
package set git.url "https://github.com/pmodels/mpich.git"
package set src.url "https://www.mpich.org/static/downloads/3.4.2/mpich-3.4.2.tar.gz"
package set src.sum "5c19bea8b84e8d74cca5f047e82b147ff3fba096144270e3911ad623d6c587bf"
package set license "mpich2"
package set bsystem "configure"

build() {
    configure --disable-fortran
}
