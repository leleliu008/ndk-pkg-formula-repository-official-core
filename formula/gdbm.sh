package set summary "GNU database manager"
package set webpage "https://www.gnu.org/software/gdbm"
package set src.url "https://ftp.gnu.org/gnu/gdbm/gdbm-1.22.tar.gz"
package set src.sum "f366c823a6724af313b6bbe975b2809f9a157e5f6a43612a72949138d161d762"
package set license "GPL-3.0"
package set bsystem "configure"
package set dep.cmd "gzip base64"

build() {
    configure --enable-libgdbm-compat
}
