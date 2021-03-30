summary "PNG encoder and decoder in C and C++"
src_git "https://github.com/lvandeve/lodepng.git"
license "Zlib"
bsystem "make"

prepare() {
    override_makefile
}

build() {
    make -C "$SOURCE_DIR" clean &&
    make -C "$SOURCE_DIR" install \
        CXX="$CXX" \
        CXXFLAGS="'$CXXFLAGS'" \
        CPPFLAGS="'$CPPFLAGS'" \
        AR="$AR" \
        PREFIX="$ABI_INSTALL_DIR"
}

override_makefile() {
    cat > Makefile <<EOF
CC ?= cc
AR ?= ar

ARFLAGS = rs

PREFIX  = /usr/local

INC_DIR = \$(PREFIX)/include
LIB_DIR = \$(PREFIX)/lib

build: lodepng.a lodepng_util.a

lodepng.a: lodepng.o
	\$(AR) \$(ARFLAGS) \$@ \$^

lodepng_util.a: lodepng.o lodepng_util.o
	\$(AR) \$(ARFLAGS) \$@ \$^

install: build
	install -d                    \$(DEST_DIR)\$(INC_DIR)
	install -m 644 lodepng.h      \$(DEST_DIR)\$(INC_DIR)
	install -m 644 lodepng_util.h \$(DEST_DIR)\$(INC_DIR)
	install -d                    \$(DEST_DIR)\$(LIB_DIR)
	install -m 644 lodepng.a      \$(DEST_DIR)\$(LIB_DIR)
	install -m 644 lodepng_util.a \$(DEST_DIR)\$(LIB_DIR)

clean:
	rm -rf *.o *.a

distclean: clean

.PHONY: clean
EOF
}
