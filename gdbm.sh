summary "GNU database manager"
webpage "https://www.gnu.org/software/gdbm"
src_url "https://ftp.gnu.org/gnu/gdbm/gdbm-1.19.tar.gz"
src_sum "37ed12214122b972e18a0d94995039e57748191939ef74115b1d41d8811364bc"
license "GPL-3.0"
bsystem "configure"
require "gzip base64"

build() {
    configure --enable-libgdbm-compat
}
