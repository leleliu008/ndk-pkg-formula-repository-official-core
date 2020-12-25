summary "Implementation of malloc emphasizing fragmentation avoidance"
webpage "http://jemalloc.net"
src_url "https://github.com/jemalloc/jemalloc/releases/download/5.2.1/jemalloc-5.2.1.tar.bz2"
src_sum "34330e5ce276099e2e8950d9335db5a875689a4c6a56751ef3b1d8c537f887f6"
license "BSD-2-Clause"

prepare() {
    #sed_in_place 's/JEMALLOC_NOTHROW/JEMALLOC_XXXXXXX/' include/jemalloc/jemalloc_macros.h.in
    sed_in_place 's/__declspec(.*)//g' include/jemalloc/jemalloc_macros.h.in
}

modify_code()    {    
    for item in $(find . -name "*.[h|c|cpp]")
    do
        sed_in_place 's/JEMALLOC_NOTHROW//g' "$item" || return 1
    done
}

build() {
    cd "$SOURCE_DIR" &&
    ./configure \
        --host="$BUILD_FOR_HOST" \
        --prefix="$ABI_INSTALL_DIR" \
        --disable-debug \
        --disable-prof \
        --enable-libdl \
        --enable-log \
        --enable-cxx \
        --enable-static \
        --enable-shared \
        CC="$CC" \
        CFLAGS="$CFLAGS" \
        CXX="$CXX" \
        CXXFLAGS="$CXXFLAGS" \
        CPP="$CPP" \
        CPPFLAGS="$CPPFLAGS" \
        LDFLAGS="$LDFLAGS" \
        AR="$AR" \
        RANLIB="$RANLIB" &&
    modify_code &&
    make clean &&
    make install
}
