summary "Frontend for libraries libburn and libisofs"
webpage "https://www.libburnia-project.org"
src_url "http://files.libburnia-project.org/releases/libisoburn-1.5.2.tar.gz"
src_sum "cc720bc9511d8e0b09365e2c8b0e40817986be308cd96ca2705c807c955590ec"
bsystem "configure"
depends "libisofs libburn"

prepare() {
    {
        # char* nl_langinfo(nl_item __item) __INTRODUCED_IN(26)
        if [ "$MIN_SDK_API_LEVEL" -lt 26 ] ; then
            sed_in_place 's/nl_langinfo(CODESET)/"UTF-8"/' xorriso/lib_mgt.c &&
            sed_in_place 's/nl_langinfo(CODESET)/"UTF-8"/' xorriso/text_io.c
        fi
    } &&
    sed_in_place 's/-lpthread//g' configure &&
    sed_in_place 's/wait3(NULL,WNOHANG,NULL)/waitpid(-1,NULL,WNOHANG)/' xorriso/parse_exec.c
}

build() {
    configure \
        --enable-xattr \
        --enable-zlib \
        --disable-libcdio \
        --disable-libjte \
        --disable-libacl \
        --disable-libedit \
        --disable-libreadline
}
