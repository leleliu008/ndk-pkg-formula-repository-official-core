package set summary "Powerful, lightweight programming language"
package set webpage "https://www.lua.org/"
package set git.url "https://github.com/lua/lua.git"
package set src.url "https://www.lua.org/ftp/lua-5.4.3.tar.gz"
package set src.sum "f8612276169e3bfcbcfb8f226195bfc6e466fe13042f1076cbde92b7ec96bbfb"
package set license "MIT"
package set dep.pkg "readline"
package set bsystem "make"
package set binsrcd "yes"

build() {
    makew clean &&
    makew PLAT=generic CC="$CC" CFLAGS="'$CFLAGS -std=c99 -DLUA_COMPAT_5_3 $CPPFLAGS'" AR="'$AR crs'" RANLIB="$RANLIB" MYLDFLAGS="'$LDFLAGS -pie -fPIE'" MYLIBS=-lreadline &&
    makew install INSTALL_TOP="$ABI_INSTALL_DIR"
}
