summary "Maintained ctags implementation"
webpage "https://github.com/universal-ctags/ctags"
src_url "https://github.com/universal-ctags/ctags.git"
require "autoreconf autoconf automake autoheader pkg-config cc"
depends "jansson libyaml libxml2"

prepare() {
    ./autogen.sh
}

build() {
    configure --disable-seccomp
}
