pkg_set summary "Bytecode optimizer for Android apps"
pkg_set webpage "https://fbredex.com"
pkg_set git.url "https://github.com/facebook/redex.git"
pkg_set license "MIT"
pkg_set dep.pkg "boost jsoncpp libexecinfo"
pkg_set bsystem "autotools"

prepare() {
    sed_in_place 's/-lpthread/-lc/g'           Makefile.am &&
    sed_in_place 's/__ANDROID__/0/g'           tools/oatmeal/dump-oat.cpp &&
    sed_in_place 's/__ANDROID__/0/g'           tools/oatmeal/elf-writer.cpp &&
    sed_in_place 's/#ifdef __ANDROID__/#if 0/' libresource/ResourceTypes.cpp &&
    autoreconf -ivf &&
    sed_in_place 's/-lpthread//g'     configure &&
    sed_in_place 's/PTHREAD_LIBS=//g' configure
}

build() {
    build_with_configure
}

build_with_configure() {
    export LDFLAGS="$LDFLAGS -lexecinfo -ljsoncpp -lbz2 -lzstd -llzma"
    configure \
        --with-boost="$boost_INSTALL_DIR" \
        ac_cv_lib_boost_filesystem___exit=yes \
        ac_cv_lib_boost_system___exit=yes \
        ac_cv_lib_boost_regex___exit=yes \
        ac_cv_lib_boost_program_options___exit=yes \
        ac_cv_lib_boost_iostreams___exit=yes \
        ac_cv_lib_boost_thread___exit=yes \
        ac_cv_lib_z_adler32=yes \
        ac_cv_lib_jsoncpp_main=yes
}

build_with_cmake() {
    export LDFLAGS="$LDFLAGS -lexecinfo"
    cmakew \
        -DBUILD_TYPE=Static \
        -DBoost_INCLUDE_DIR="$boost_INCLUDE_DIR" \
        -DJsonCpp_INCLUDE_DIR="$jsoncpp_INCLUDE_DIR" \
        -DJsonCpp_LIBRARY="$jsoncpp_LIBRARY_DIR/libjsoncpp.so" \
        -DZLIB_INCLUDE_DIR="$SYSTEM_INCLUDE_DIR" \
        -DZLIB_LIBRARIES="$zlib_LIBRARY_DIR/libz.so"
}
