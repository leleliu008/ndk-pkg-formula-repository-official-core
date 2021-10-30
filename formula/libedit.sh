package set summary "BSD-style licensed readline alternative"
package set webpage "https://thrysoee.dk/editline"
package set src.url "https://thrysoee.dk/editline/libedit-20210910-3.1.tar.gz"
package set src.sum "6792a6a992050762edcca28ff3318cdb7de37dccf7bc30db59fcd7017eed13c5"
package set bsystem "configure"
package set dep.pkg "ncurses"
package set cdefine "__STDC_ISO_10646__ NBBY=1"

build() {
    configure --disable-examples
}
