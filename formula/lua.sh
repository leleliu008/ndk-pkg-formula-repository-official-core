package set summary "Powerful, lightweight programming language"
package set webpage "https://www.lua.org/"
package set git.url "https://github.com/lua/lua.git"
package set src.url "https://www.lua.org/ftp/lua-5.4.4.tar.gz"
package set src.sum "164c7849653b80ae67bec4b7473b884bf5cc8d2dca05653475ec2ed27b9ebf61"
package set license "MIT"
package set dep.pkg "readline"
package set bsystem "make"
package set binsrcd "yes"

build() {
    makew clean &&
    makew PLAT=generic CC="$CC" CFLAGS="'$CFLAGS -std=c99 -DLUA_COMPAT_5_3 $CPPFLAGS'" AR="'$AR crs'" RANLIB="$RANLIB" MYLDFLAGS="'$LDFLAGS -pie -fPIE'" MYLIBS=-lreadline &&
    makew install INSTALL_TOP="$TARGET_INSTALL_DIR"
}
