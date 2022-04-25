pkg_set summary "Powerful, lightweight programming language"
pkg_set webpage "https://www.lua.org/"
pkg_set git.url "https://github.com/lua/lua.git"
pkg_set src.url "https://www.lua.org/ftp/lua-5.4.4.tar.gz"
pkg_set src.sha "164c7849653b80ae67bec4b7473b884bf5cc8d2dca05653475ec2ed27b9ebf61"
pkg_set license "MIT"
pkg_set dep.pkg "readline"
pkg_set bsystem "make"
pkg_set binbstd "yes"

build() {
    makew clean &&
    makew PLAT=generic CC="$CC" CFLAGS="'$CFLAGS -std=c99 -DLUA_COMPAT_5_3 $CPPFLAGS'" AR="'$AR crs'" RANLIB="$RANLIB" MYLDFLAGS="'$LDFLAGS -pie -fPIE'" MYLIBS=-lreadline &&
    makew install INSTALL_TOP="$TARGET_INSTALL_DIR"
}
