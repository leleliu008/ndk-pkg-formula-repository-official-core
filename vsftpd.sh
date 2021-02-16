summary "Secure FTP server for UNIX"
webpage "https://security.appspot.com/vsftpd.html"
src_url "https://security.appspot.com/downloads/vsftpd-3.0.3.tar.gz"
src_sum "9d4d2bf6e6e2884852ba4e69e157a2cecd68c5a7635d66a3a8cf8d898c955ef7"
license "GPL-2.0-only"
require "make"
depends "openssl libcap libcrypt"

build_in_sourced

prepare() {
    # https://linux.die.net/man/3/getusershell
    sed_in_place '/#define VSF_SYSDEP_HAVE_USERSHELL/d' sysdeputil.c
}

build() {
    $MAKE clean &&
    $MAKE CC="$CC" CFLAGS="$CFLAGS $CPPFLAGS" LDFLAGS="$LDFLAGS" LIBS="-lssl -lcrypto -lcrypt -lcap" &&
    install_bins vsftpd
}
