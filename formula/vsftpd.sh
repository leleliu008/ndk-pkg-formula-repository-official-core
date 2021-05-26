package set summary "Secure FTP server for UNIX"
package set webpage "https://security.appspot.com/vsftpd.html"
package set src.url "https://security.appspot.com/downloads/vsftpd-3.0.3.tar.gz"
package set src.sum "9d4d2bf6e6e2884852ba4e69e157a2cecd68c5a7635d66a3a8cf8d898c955ef7"
package set license "GPL-2.0-only"
package set bsystem "make"
package set dep.pkg "openssl libcap libcrypt"

package set binsrcd true

prepare() {
    # https://linux.die.net/man/3/getusershell
    sed_in_place '/#define VSF_SYSDEP_HAVE_USERSHELL/d' sysdeputil.c
}

build() {
    makew clean &&
    makew CC="$CC" CFLAGS="'$CFLAGS $CPPFLAGS'" LDFLAGS="'$LDFLAGS'" LIBS="'-lssl -lcrypto -lcrypt -lcap'" &&
    install_bins vsftpd
}
