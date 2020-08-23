summary="HTTP(S) server and reverse proxy, and IMAP/POP3 proxy server"
homepage="https://nginx.org"
url="https://nginx.org/download/nginx-1.19.1.tar.gz"
sha256="a004776c64ed3c5c7bc9b6116ba99efab3265e6b81d49a57ca4471ff90655492"
dependencies="openssl pcre"

trace_configure() {
    for item in $(ls $1)
    do
        if [ -f "$1/$item" ] ; then
            if [ "$XTRACE" = 'true' ] ; then
                sed_in_place '1i set -x' "$1/$item"
            fi
            sed_in_place 's/ngx_feature_run=yes/ngx_feature_run=no/g' "$1/$item"
        elif [ -d "$1/$item" ] ; then
            trace_configure "$1/$item"
        fi
    done
}

prepare() {
    trace_configure auto
    if [ "$XTRACE" = 'true' ] ; then
        sed_in_place '1i set -x' configure
    fi

    sed_in_place 's/#if (NGX_READ_EVENT != EPOLLIN|EPOLLRDHUP)/#if 1/' src/event/modules/ngx_epoll_module.c &&
    sed_in_place 's/#if (NGX_WRITE_EVENT != EPOLLOUT)/#if 1/'          src/event/modules/ngx_epoll_module.c &&
    
    fetch https://raw.githubusercontent.com/muojie/nginx-android/master/glob/glob.h --output-dir=src/os/unix &&
    fetch https://raw.githubusercontent.com/muojie/nginx-android/master/glob/glob.c --output-dir=src/os/unix &&
    sed_in_place '/src\/os\/unix\/ngx_user.c/a src/os/unix/glob.c \\' auto/sources &&
    sed_in_place 's/#include <glob.h>/#include "glob.h"/' src/os/unix/ngx_linux_config.h &&
    sed_in_place 's/#include <crypt.h>//g'                src/os/unix/ngx_linux_config.h &&
    sed_in_place '1a #include <openssl/des.h>' src/os/unix/ngx_user.c &&
    sed_in_place 's/crypt((/DES_crypt((/g'     src/os/unix/ngx_user.c &&
    sed_in_place '/#if (NGX_HAVE_SCHED_SETAFFINITY)/a #include <sched.h>' src/os/unix/ngx_setaffinity.h
}

build() {
    export NGX_SYSTEM=Linux
    export NGX_RELEASE=unkown
    export NGX_MACHINE=$TARGET_ARCH

    case $TARGET_ABI in
        armeabi-v7a|x86)
            sed_in_place 's/ngx_size=`$NGX_AUTOTEST`/ngx_size=4/' auto/types/sizeof
            ;;
        arm64-v8a|x86_64)
            sed_in_place 's/ngx_size=`$NGX_AUTOTEST`/ngx_size=8/' auto/types/sizeof
            ;;
    esac
    
    [ -f Makefile ] && make clean
    
    ./configure \
        --prefix="$DIR_INSTALL_PREFIX" \
        --crossbuild=Linux:unkown:$TARGET_ARCH \
        --with-cc="$CC" \
        --with-cc-opt="$CFLAGS $CPPFLAGS --sysroot=$SYSROOT -D__POSIX_VISIBLE=199209 -D__BSD_VISIBLE=1 -D__USE_GNU" \
        --with-ld-opt="$LDFLAGS --sysroot=$SYSROOT -lcrypto" \
        --with-pcre &&
    write_NGX_SYS_NERR &&
    make install
}

write_NGX_SYS_NERR() {
    cat >> objs/ngx_auto_config.h <<EOF
#ifndef NGX_SYS_NERR
#define NGX_SYS_NERR  107
#endif
EOF
}
