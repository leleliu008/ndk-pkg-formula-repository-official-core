pkg_set summary "BSD-style licensed readline alternative"
pkg_set webpage "https://thrysoee.dk/editline"
pkg_set src.url "https://thrysoee.dk/editline/libedit-20210910-3.1.tar.gz"
pkg_set src.sha "6792a6a992050762edcca28ff3318cdb7de37dccf7bc30db59fcd7017eed13c5"
pkg_set license "BSD-3-Clause"
pkg_set dep.pkg "ncurses"
pkg_set bsystem "configure"
pkg_set cdefine "__STDC_ISO_10646__ NBBY=1"

build() {
    configure --disable-examples
}
