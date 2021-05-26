package set summary "HTTP(S) server and reverse proxy, and IMAP/POP3 proxy server"
package set webpage "https://nginx.org"
package set src.url "https://nginx.org/download/nginx-1.19.1.tar.gz"
package set src.sum "a004776c64ed3c5c7bc9b6116ba99efab3265e6b81d49a57ca4471ff90655492"
package set bsystem "make"
package set dep.pkg "openssl pcre libcrypt libglob"

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
    sed_in_place '/#if (NGX_HAVE_SCHED_SETAFFINITY)/a #include <sched.h>' src/os/unix/ngx_setaffinity.h
}

package set binsrcd true

build() {
    export NGX_SYSTEM=Linux
    export NGX_RELEASE=unkown
    export NGX_MACHINE=$TARGET_OS_ARCH

    if echo "$TARGET_OS_ARCH" | grep -q '64' ; then
        sed_in_place 's/ngx_size=`$NGX_AUTOTEST`/ngx_size=8/' auto/types/sizeof
    else
        sed_in_place 's/ngx_size=`$NGX_AUTOTEST`/ngx_size=4/' auto/types/sizeof
    fi
    
    [ -f Makefile ] && makew clean
    
    run ./configure \
        --prefix="$ABI_INSTALL_DIR" \
        --crossbuild=Linux:unkown:$TARGET_OS_ARCH \
        --with-cc="$CC" \
        --with-cc-opt="\"$CFLAGS $CPPFLAGS -D__POSIX_VISIBLE=199209 -D__BSD_VISIBLE=1 -D__USE_GNU\"" \
        --with-ld-opt="\"$LDFLAGS -lcrypto -lcrypt -lglob\"" \
        --with-pcre &&
    write_NGX_SYS_NERR &&
    makew install
}

write_NGX_SYS_NERR() {
    cat >> objs/ngx_auto_config.h <<EOF
#ifndef NGX_SYS_NERR
#define NGX_SYS_NERR  107
#endif
EOF
}
