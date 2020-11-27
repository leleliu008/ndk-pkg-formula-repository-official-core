summary  "ISO9660+RR manipulation tool"
homepage "https://www.gnu.org/software/xorriso"
url      "https://ftp.gnu.org/gnu/xorriso/xorriso-1.5.2.tar.gz"
sha256   "3b69f5c93ae7c40c5bbe4a847fa3963f5efc9c565551622f77121c5792fc17e7"
dependencies "libiconv"

prepare() {
    {
        # char* nl_langinfo(nl_item __item) __INTRODUCED_IN(26)
        if [ "$MIN_SDK_API_LEVEL" -lt 26 ] ; then
            sed_in_place 's/nl_langinfo(CODESET)/"UTF-8"/' xorriso/lib_mgt.c &&
            sed_in_place 's/nl_langinfo(CODESET)/"UTF-8"/' xorriso/text_io.c &&
            sed_in_place 's/nl_langinfo(CODESET)/"UTF-8"/' libisofs/util.c
        fi
    } &&
    sed_in_place '/THREAD_LIBS=-lpthread/d' configure &&
    sed_in_place 's/wait3(NULL,WNOHANG,NULL)/waitpid(-1,NULL,WNOHANG)/' xorriso/parse_exec.c
}

build() {
    configure \
        --enable-libacl \
        --enable-xattr \
        --enable-zlib \
        --enable-libbz2 \
        --enable-libcdio \
        --enable-jtethreads
}
