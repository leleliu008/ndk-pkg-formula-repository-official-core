pkg_set summary "Burrows–Wheeler-based data compression library and utilities with high compression ratio"
pkg_set webpage "https://sourceware.org/bzip2"
pkg_set git.url "https://sourceware.org/git/bzip2.git"
pkg_set src.url "https://sourceware.org/pub/bzip2/bzip2-1.0.8.tar.gz"
pkg_set src.sha "ab5a03176ee106d3f0fa90e381da478ddae405918153cca248e682cd0c4a2269"
pkg_set bsystem "make"
pkg_set binbstd "yes"
pkg_set license ";LICENSE;https://sourceware.org/git/?p=bzip2.git;a=blob_plain;f=LICENSE;h=81a37eab7a5be1a34456f38adb74928cc9073e9b;hb=HEAD"
pkg_set developer "Julian+Seward;jseward@acm.org"

prepare() {
    repair_makefile
}

build() {
    makew clean &&
    makew install \
        PREFIX="$TARGET_INSTALL_DIR" \
        CC="$CC" \
        CFLAGS="\"$CFLAGS\"" \
        LDFLAGS="\"$LDFLAGS\"" \
        AR="$AR" && {
        install_pc_file 'libbz2' <<EOF
prefix=$TARGET_INSTALL_DIR
exec_prefix=\${prefix}
libdir=\${exec_prefix}/lib
includedir=\${prefix}/include

Name: libbz2
URL: ${PACKAGE_WEBPAGE}
Description: ${PACKAGE_SUMMARY}
Version: ${PACKAGE_VERSION}
Libs: -L\${libdir} -lbz2
Cflags: -I\${includedir}
EOF
    } && (cd "$TARGET_INSTALL_DIR/lib/pkgconfig" && ln -s libbz2.pc bzip2.pc)
}

repair_makefile() {
    cat > Makefile <<EOF
CC ?= cc
AR ?= ar

override CPPFLAGS += -D_FILE_OFFSET_BITS=64
LDFLAGS=

PREFIX=/usr/local

LIB_STATIC_FILE_EXT=a
LIB_SHARED_FILE_EXT=so

LIB_STATIC_FILE_NAME=libbz2.\$(LIB_STATIC_FILE_EXT)
LIB_SHARED_FILE_NAME=libbz2.\$(LIB_SHARED_FILE_EXT)

LIB_OBJS = blocksort.o  \\
      huffman.o    \\
      crctable.o   \\
      randtable.o  \\
      compress.o   \\
      decompress.o \\
      bzlib.o

build: bzip2 bzip2recover \$(LIB_SHARED_FILE_NAME)

bzip2: bzip2.o \$(LIB_STATIC_FILE_NAME)
	\$(CC) \$(CFLAGS) \$(LDFLAGS) -pie -fPIE \$^ -o \$@

bzip2recover: bzip2recover.o
	\$(CC) \$(CFLAGS) \$(LDFLAGS) -pie -fPIE \$^ -o \$@

\$(LIB_SHARED_FILE_NAME): \$(LIB_OBJS)
	\$(CC) \$(CFLAGS) \$(LDFLAGS) \$^ -o \$@ -shared -fpic

\$(LIB_STATIC_FILE_NAME): \$(LIB_OBJS)
	\$(AR) rcs \$@ \$^

install-include: bzlib.h
	install -d        \$(PREFIX)/include
	install -m 644 \$^ \$(PREFIX)/include

install-bin: bzip2 bzip2recover bzgrep bzmore bzdiff
	install -d        \$(PREFIX)/bin
	install -m 755 \$^ \$(PREFIX)/bin
	cd \$(PREFIX)/bin && \\
	ln -s -f bzip2 bunzip2 && \\
	ln -s -f bzip2 bzcat && \\
	ln -s -f bzgrep bzegrep && \\
	ln -s -f bzgrep bzfgrep && \\
	ln -s -f bzmore bzless && \\
	ln -s -f bzdiff bzcmp

install-lib: \$(LIB_STATIC_FILE_NAME) \$(LIB_SHARED_FILE_NAME)
	install -d                             \$(PREFIX)/lib
	install -m 644 \$(LIB_STATIC_FILE_NAME) \$(PREFIX)/lib
	install -m 755 \$(LIB_SHARED_FILE_NAME) \$(PREFIX)/lib

install-man: bzip2.1 bzgrep.1 bzmore.1 bzdiff.1
	install -d                 \$(PREFIX)/share/man/man1
	install -m 644 \$^          \$(PREFIX)/share/man/man1
	echo ".so man1/bzgrep.1" > \$(PREFIX)/share/man/man1/bzegrep.1
	echo ".so man1/bzgrep.1" > \$(PREFIX)/share/man/man1/bzfgrep.1
	echo ".so man1/bzmore.1" > \$(PREFIX)/share/man/man1/bzless.1
	echo ".so man1/bzdiff.1" > \$(PREFIX)/share/man/man1/bzcmp.1

install: build install-include install-bin install-lib install-man

test: bzip2
	@cat words1
	./bzip2 -1  < sample1.ref > sample1.rb2
	./bzip2 -2  < sample2.ref > sample2.rb2
	./bzip2 -3  < sample3.ref > sample3.rb2
	./bzip2 -d  < sample1.bz2 > sample1.tst
	./bzip2 -d  < sample2.bz2 > sample2.tst
	./bzip2 -ds < sample3.bz2 > sample3.tst
	cmp sample1.bz2 sample1.rb2
	cmp sample2.bz2 sample2.rb2
	cmp sample3.bz2 sample3.rb2
	cmp sample1.tst sample1.ref
	cmp sample2.tst sample2.ref
	cmp sample3.tst sample3.ref
	@cat words3

check: test

.PHONY: clean
clean:
	rm -f *.o libbz2.a libbz2.so libbz2.dylib bzip2 bzip2recover \\
	sample1.rb2 sample2.rb2 sample3.rb2 \\
	sample1.tst sample2.tst sample3.tst

distclean: clean
	rm -f manual.ps manual.html manual.pdf

DISTNAME=bzip2-1.0.8
dist: check manual
	rm -f \$(DISTNAME)
	ln -s -f . \$(DISTNAME)
	tar zvcf \$(DISTNAME).tar.gz \\
	   \$(DISTNAME)/blocksort.c \\
	   \$(DISTNAME)/huffman.c \\
	   \$(DISTNAME)/crctable.c \\
	   \$(DISTNAME)/randtable.c \\
	   \$(DISTNAME)/compress.c \\
	   \$(DISTNAME)/decompress.c \\
	   \$(DISTNAME)/bzlib.c \\
	   \$(DISTNAME)/bzip2.c \\
	   \$(DISTNAME)/bzip2recover.c \\
	   \$(DISTNAME)/bzlib.h \\
	   \$(DISTNAME)/bzlib_private.h \\
	   \$(DISTNAME)/Makefile \\
	   \$(DISTNAME)/LICENSE \\
	   \$(DISTNAME)/bzip2.1 \\
	   \$(DISTNAME)/bzip2.1.preformatted \\
	   \$(DISTNAME)/bzip2.txt \\
	   \$(DISTNAME)/words0 \\
	   \$(DISTNAME)/words1 \\
	   \$(DISTNAME)/words2 \\
	   \$(DISTNAME)/words3 \\
	   \$(DISTNAME)/sample1.ref \\
	   \$(DISTNAME)/sample2.ref \\
	   \$(DISTNAME)/sample3.ref \\
	   \$(DISTNAME)/sample1.bz2 \\
	   \$(DISTNAME)/sample2.bz2 \\
	   \$(DISTNAME)/sample3.bz2 \\
	   \$(DISTNAME)/dlltest.c \\
	   \$(DISTNAME)/manual.html \\
	   \$(DISTNAME)/manual.pdf \\
	   \$(DISTNAME)/manual.ps \\
	   \$(DISTNAME)/README \\
	   \$(DISTNAME)/README.COMPILATION.PROBLEMS \\
	   \$(DISTNAME)/README.XML.STUFF \\
	   \$(DISTNAME)/CHANGES \\
	   \$(DISTNAME)/libbz2.def \\
	   \$(DISTNAME)/libbz2.dsp \\
	   \$(DISTNAME)/dlltest.dsp \\
	   \$(DISTNAME)/makefile.msc \\
	   \$(DISTNAME)/unzcrash.c \\
	   \$(DISTNAME)/spewG.c \\
	   \$(DISTNAME)/mk251.c \\
	   \$(DISTNAME)/bzdiff \\
	   \$(DISTNAME)/bzdiff.1 \\
	   \$(DISTNAME)/bzmore \\
	   \$(DISTNAME)/bzmore.1 \\
	   \$(DISTNAME)/bzgrep \\
	   \$(DISTNAME)/bzgrep.1 \\
	   \$(DISTNAME)/Makefile-libbz2_so \\
	   \$(DISTNAME)/bz-common.xsl \\
	   \$(DISTNAME)/bz-fo.xsl \\
	   \$(DISTNAME)/bz-html.xsl \\
	   \$(DISTNAME)/bzip.css \\
	   \$(DISTNAME)/entities.xml \\
	   \$(DISTNAME)/manual.xml \\
	   \$(DISTNAME)/format.pl \\
	   \$(DISTNAME)/xmlproc.sh


MANUAL_SRCS = bz-common.xsl bz-fo.xsl bz-html.xsl bzip.css entities.xml manual.xml

manual: manual.html manual.ps manual.pdf

manual.ps: \$(MANUAL_SRCS)
	./xmlproc.sh -ps manual.xml

manual.pdf: \$(MANUAL_SRCS)
	./xmlproc.sh -pdf manual.xml

manual.html: \$(MANUAL_SRCS)
	./xmlproc.sh -html manual.xml
EOF
}
