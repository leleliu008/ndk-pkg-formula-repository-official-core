summary  "Maintained ctags implementation"
homepage "https://github.com/universal-ctags/ctags"
url      "https://github.com/universal-ctags/ctags.git"
requirements "autoreconf autoconf automake autoheader pkg-config cc"
dependencies "jansson libyaml libxml2"

prepare() {
    ./autogen.sh &&
    sed_in_place 's|@echo|echo|g' Makefile.in
}

build() {
    #ln -s "$SOURCE_DIR/Units" "$BUILD_DIR/Units" &&
    #ln -s "$SOURCE_DIR/Tmain" "$BUILD_DIR/Tmain" &&
    configure --disable-seccomp
}
