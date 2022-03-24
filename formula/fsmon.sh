package set summary "Filesystem monitor with fanotify and inotify backends"
package set git.url "https://github.com/nowsecure/fsmon.git"
package set src.url "https://github.com/nowsecure/fsmon/archive/1.8.4.tar.gz"
package set src.sum "3e9ac1f20c76caf8d576535f21723419fe73bfe63178d306ea07f141f7dbaf0a"
package set license "MIT"
package set bsystem "make"
package set binbstd "yes"

prepare() {
    sed_in_place 's|$(shell uname)|Linux|' Makefile
}

build() {
    makew clean
    makew FANOTIFY_CFLAGS="'-DHAVE_FANOTIFY=1 -DHAVE_SYS_FANOTIFY=0'"
    makew install PREFIX="$TARGET_INSTALL_DIR"
}
