pkg_set summary "Standalone library of the Fraunhofer FDK AAC code from Android"
pkg_set webpage "https://sourceforge.net/projects/opencore-amr"
pkg_set git.url "https://git.code.sf.net/p/opencore-amr/fdk-aac.git"
pkg_set src.url "https://downloads.sourceforge.net/project/opencore-amr/fdk-aac/fdk-aac-2.0.2.tar.gz"
pkg_set src.sha "c9e8630cf9d433f3cead74906a1520d2223f89bcd3fa9254861017440b8eb22f"
pkg_set license "Apache-2.0"
pkg_set bsystem "configure"

prepare() {
    mkdir -p libSBRdec/include/log &&
    cat    > libSBRdec/include/log/log.h <<EOF
#include<android/log.h>
#define android_errorWriteLog(x,...) __android_log_print(ANDROID_LOG_FATAL, "TAG", __VA_ARGS__)
EOF
}
