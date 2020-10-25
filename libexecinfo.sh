summary="a quick-n-dirty BSD licensed clone of backtrace facility found in the GNU libc"
homepage="https://github.com/resslinux/libexecinfo"
url="https://github.com/resslinux/libexecinfo/archive/v20180201.tar.gz"
version="2018.02.01"
sha256="93b00d29e42d76b621e4c316e08b08001f2c70267be8f062359c12da813888b0"

prepare() {
    repare_makefile
}

build() {
    $MAKE -C "$SOURCE_DIR" clean &&
    $MAKE -C "$SOURCE_DIR" install PREFIX="$ABI_INSTALL_DIR"
}

repare_makefile() {
    cat > Makefile <<EOF
CC ?= cc
AR ?= ar

PREFIX  = /usr/local
INC_DIR = \$(PREFIX)/include
LIB_DIR = \$(PREFIX)/lib

LIB_STATIC_FILE_EXT=a
LIB_SHARED_FILE_EXT=so

LIB_STATIC_FILE_NAME=libexecinfo.\$(LIB_STATIC_FILE_EXT)
LIB_SHARED_FILE_NAME=libexecinfo.\$(LIB_SHARED_FILE_EXT)

LIB_OBJS = \$(patsubst %.c, %.o, execinfo.c stacktraverse.c)

build: \$(LIB_STATIC_FILE_NAME) \$(LIB_SHARED_FILE_NAME)

\$(LIB_STATIC_FILE_NAME): \$(LIB_OBJS)
	\$(AR) rcs \$@ \$^

\$(LIB_SHARED_FILE_NAME): \$(LIB_OBJS)
	\$(CC) \$(CFLAGS) \$(LDFLAGS) -shared -Wl,-soname,\$@       -o \$@ \$^ 2> /dev/null || \\
\$(CC) \$(CFLAGS) \$(LDFLAGS) -shared -Wl,-install_name,\$@ -o \$@ \$^

install: build
	install -d                     \$(DEST_DIR)\$(INC_DIR)
	install -m 644 execinfo.h      \$(DEST_DIR)\$(INC_DIR)
	install -m 644 stacktraverse.h \$(DEST_DIR)\$(INC_DIR)
	install -d                             \$(DEST_DIR)\$(LIB_DIR)
	install -m 644 \$(LIB_STATIC_FILE_NAME) \$(DEST_DIR)\$(LIB_DIR)
	install -m 755 \$(LIB_SHARED_FILE_NAME) \$(DEST_DIR)\$(LIB_DIR)

clean:
	rm -rf *.o *.a *.so *.dylib

distclean: clean

.PHONY: clean
EOF
}
