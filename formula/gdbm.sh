pkg_set summary "GNU database manager"
pkg_set webpage "https://www.gnu.org/software/gdbm"
pkg_set src.url "https://ftp.gnu.org/gnu/gdbm/gdbm-1.23.tar.gz"
pkg_set src.sha "74b1081d21fff13ae4bd7c16e5d6e504a4c26f7cde1dca0d963a484174bbcacd"
pkg_set license "GPL-3.0-or-later"
pkg_set dep.cmd "gzip base64"
pkg_set bsystem "configure"

build() {
    configure --enable-libgdbm-compat
}
