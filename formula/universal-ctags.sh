pkg_set summary "Maintained ctags implementation"
pkg_set git.url "https://github.com/universal-ctags/ctags.git"
pkg_set license "GPL-2.0-or-later"
pkg_set dep.pkg "jansson libyaml libxml2"
pkg_set dep.cmd "pkg-config"
pkg_set bsystem "autogen"

build() {
    configure --disable-static
}
