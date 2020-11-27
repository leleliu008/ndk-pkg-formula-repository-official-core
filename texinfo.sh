summary  "Official documentation format of the GNU project"
homepage "https://www.gnu.org/software/texinfo"
url      "https://ftp.gnu.org/gnu/texinfo/texinfo-6.7.tar.xz"
sha256   "988403c1542d15ad044600b909997ba3079b10e03224c61188117f3676b02caa"
license  "GPL-3.0"

build() {
    configure \
        --with-included-regex \
        --enable-threads=posix
}
