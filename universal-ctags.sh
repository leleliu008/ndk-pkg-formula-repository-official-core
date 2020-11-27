summary  "Maintained ctags implementation"
homepage "https://github.com/universal-ctags/ctags"
url      "https://github.com/universal-ctags/ctags.git"
requirements "autoreconf autoconf automake autoheader pkg-config cc"
dependencies "jansson libyaml libxml2"

prepare() {
    ./autogen.sh &&
    sed_in_place 's|@echo|echo|g' Makefile.am &&
    sed_in_place 's|@echo|echo|g' Makefile.in &&
    sed_in_place '/packcc$(EXEEXT):/c packcc$(EXEEXT): misc/packcc/packcc.c' Makefile.in &&
    sed_in_place 's|$(AM_V_CCLD)$(packcc_LINK) $(packcc_OBJECTS) $(packcc_LDADD) $(LIBS)|$(CC_FOR_BUILD) -o $@ $^|' Makefile.in
}

build() {
    ln -s "$SOURCE_DIR/Units" "$BUILD_DIR/Units" &&
    ln -s "$SOURCE_DIR/Tmain" "$BUILD_DIR/Tmain" &&
    configure --disable-seccomp
}
