pkg_set summary "Filesystem monitor with fanotify and inotify backends"
pkg_set git.url "https://github.com/nowsecure/fsmon.git"
pkg_set src.url "https://github.com/nowsecure/fsmon/archive/1.8.4.tar.gz"
pkg_set src.sha "3e9ac1f20c76caf8d576535f21723419fe73bfe63178d306ea07f141f7dbaf0a"
pkg_set license "MIT"
pkg_set bsystem "gmake"
pkg_set binbstd "yes"

prepare() {
    sed_in_place 's|$(shell uname)|Linux|' Makefile
}

build() {
    gmakew clean
    gmakew FANOTIFY_CFLAGS="'-DHAVE_FANOTIFY=1 -DHAVE_SYS_FANOTIFY=0'"
    gmakew install PREFIX="$TARGET_INSTALL_DIR"
}
