package set summary "BSD-style licensed readline alternative"
package set webpage "https://thrysoee.dk/editline"
package set src.url "https://thrysoee.dk/editline/libedit-20191231-3.1.tar.gz"
package set src.sum "dbb82cb7e116a5f8025d35ef5b4f7d4a3cdd0a3909a146a39112095a2d229071"
package set bsystem "configure"
package set dep.pkg "ncurses"
package set cdefine "__STDC_ISO_10646__ NBBY=1"

build() {
    configure --disable-examples
}
