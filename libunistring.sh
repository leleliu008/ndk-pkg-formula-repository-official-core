summary "C string library for manipulating Unicode strings"
webpage "https://www.gnu.org/software/libunistring"
src_url "https://ftp.gnu.org/gnu/libunistring/libunistring-0.9.10.tar.xz"
src_sum "eb8fb2c3e4b6e2d336608377050892b54c3c983b646c561836550863003c05d7"
bsystem "configure"
depends "libiconv"

build() {
    configure \
        --with-libiconv-prefix="$libiconv_INSTALL_DIR" \
        --enable-threads=posix \
        --enable-relocatable \
        --enable-namespacing
}
