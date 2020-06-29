summary="Standalone library of the Fraunhofer FDK AAC code from Android"
homepage="https://sourceforge.net/projects/opencore-amr"
url="https://downloads.sourceforge.net/project/opencore-amr/fdk-aac/fdk-aac-2.0.1.tar.gz"
sha256="840133aa9412153894af03b27b03dde1188772442c316a4ce2a24ed70093f271"

build_first() {
    mkdir -p libSBRdec/include/log &&
    printf "%b" "#include<android/log.h>\n#define android_errorWriteLog(x,...) __android_log_print(ANDROID_LOG_FATAL, \"TAG\", __VA_ARGS__)" > libSBRdec/include/log/log.h
}

build() {
    ./configure \
        --host="$TARGET_HOST" \
        --prefix="$DIR_INSTALL_PREFIX" \
        CC="$CC" \
        CFLAGS="$CFLAGS" \
        CXX="$CXX" \
        CXXFLAGS="$CFLAGS" \
        CPPFLAGS="$CPPFLAGS" \
        LDFLAGS="$LDFLAGS" \
        AR="$AR" \
        RANLIB="$RANLIB" &&
    make clean &&
    make install
}
