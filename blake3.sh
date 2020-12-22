summary  "Rust and C implementations of the BLAKE3 cryptographic hash function"
homepage "https://github.com/BLAKE3-team/BLAKE3"
url      "https://github.com/BLAKE3-team/BLAKE3/archive/0.3.7.tar.gz"
sha256   "304b3608770cc91a151c7c4af5541dd6dd29716bad449ae5a418643ef15bcc5b"

prepare() {
    SOURCE_DIR="$WORKING_DIR/c"
}

build() {
    SRCS='blake3.c blake3_dispatch.c blake3_portable.c'
    
    case $BUILD_FOR_ABI in
        armeabi-v7a)
            CPPFLAGS="$CPPFLAGS -DBLAKE3_USE_NEON"
            SRCS="$SRCS blake3_neon.c"
            ;;
        arm64-v8a)
            CPPFLAGS="$CPPFLAGS -DBLAKE3_USE_NEON"
            SRCS="$SRCS blake3_neon.c"
            ;;
        x86)
            SRCS="$SRCS blake3_sse2.c blake3_sse41.c blake3_avx2.c blake3_avx512.c" ;;
        x86_64)
            SRCS="$SRCS blake3_sse2_x86-64_unix.S blake3_sse41_x86-64_unix.S blake3_avx2_x86-64_unix.S blake3_avx512_x86-64_unix.S" ;;
    esac
    
    OBJS=''
    
    for item in $SRCS
    do
        (
            case $item in
                blake3_sse2.c)   export CFLAGS="$CFLAGS -msse2"   ;;
                blake3_sse41.c)  export CFLAGS="$CFLAGS -msse4.1" ;;
                blake3_avx2.c)   export CFLAGS="$CFLAGS -mavx2"   ;;
                blake3_avx512.c) export CFLAGS="$CFLAGS -mavx512f -mavx512vl"
            esac
            eeval "$CC $CFLAGS $CPPFLAGS -c -o $item.o $SOURCE_DIR/$item" || return 1
        )
        OBJS="$item.o $OBJS"
    done
    
    eeval "$CC $LDFLAGS -shared -o libblake3.so $OBJS" &&
    eeval "$AR rs libblake3.a $OBJS" &&
    install_files "$SOURCE_DIR/blake3.h" libblake3.a libblake3.so
}
