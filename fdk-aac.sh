package set summary "Standalone library of the Fraunhofer FDK AAC code from Android"
package set webpage "https://sourceforge.net/projects/opencore-amr"
package set src.url "https://downloads.sourceforge.net/project/opencore-amr/fdk-aac/fdk-aac-2.0.1.tar.gz"
package set src.sum "840133aa9412153894af03b27b03dde1188772442c316a4ce2a24ed70093f271"
package set bsystem "configure"

prepare() {
    mkdir -p libSBRdec/include/log &&
    cat    > libSBRdec/include/log/log.h <<EOF
#include<android/log.h>
#define android_errorWriteLog(x,...) __android_log_print(ANDROID_LOG_FATAL, "TAG", __VA_ARGS__)
EOF
}
