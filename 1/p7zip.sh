summary "7-Zip (high compression file archiver) implementation"
webpage "https://p7zip.sourceforge.io"
src_url "https://downloads.sourceforge.net/project/p7zip/p7zip/16.02/p7zip_16.02_src_all.tar.bz2"
src_sum "5eb20ac0e2944f6cb9c2d51dd6c4518941c185347d4089ea89087ffdd6e2341f"
version "16.02"

prepare() {
    for item in $(grep '#include "StdAfx.h"' -rl .)
    do
        sed_in_place 's/#include "StdAfx.h"//' "$item"
    done
}

build() {
    make clean &&
    make all3 \
        DEST_HOME="$ABI_INSTALL_DIR" \
        LOCAL_FLAGS="$CFLAGS -include stdlib.h" \
        CC="$CC" \
        CXX="$CXX"

        #CXXFLAGS="$CXXFLAGS" \
        #CPP="$CPP" \
        #CPPFLAGS="$CPPFLAGS" \
        #LDFLAGS="$LDFLAGS" \
        #AR="$AR" \
        #RANLIB="$RANLIB"
}
