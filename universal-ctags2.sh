summary  "Maintained ctags implementation"
homepage "https://github.com/universal-ctags/ctags"
url      "dir:///Users/leleliu008/universal-ctags.git"
requirements "autoreconf autoconf automake autoheader pkg-config cc"
dependencies "jansson libyaml libxml2"

prepare() {
    sed_in_place 's|@echo|echo|g' Makefile.am &&
    sed_in_place 's|@echo|echo|g' Makefile.in
}

build() {
    set -x
    ln -s "$SOURCE_DIR/Units" "$BUILD_DIR/Units" &&
    ln -s "$SOURCE_DIR/Tmain" "$BUILD_DIR/Tmain" &&
    configure --disable-seccomp
    set +x
}
