summary "Official documentation format of the GNU project"
webpage "https://www.gnu.org/software/texinfo"
src_url "https://ftp.gnu.org/gnu/texinfo/texinfo-6.7.tar.xz"
src_sum "988403c1542d15ad044600b909997ba3079b10e03224c61188117f3676b02caa"
license "GPL-3.0"
bsystem "configure"

build() {
    configure \
        --with-included-regex \
        --enable-threads=posix
}
