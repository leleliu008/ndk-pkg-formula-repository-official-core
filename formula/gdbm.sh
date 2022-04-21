package set summary "GNU database manager"
package set webpage "https://www.gnu.org/software/gdbm"
package set src.url "https://ftp.gnu.org/gnu/gdbm/gdbm-1.23.tar.gz"
package set src.sum "74b1081d21fff13ae4bd7c16e5d6e504a4c26f7cde1dca0d963a484174bbcacd"
package set license "GPL-3.0-or-later"
package set dep.cmd "gzip base64"
package set bsystem "configure"

build() {
    configure --enable-libgdbm-compat
}
