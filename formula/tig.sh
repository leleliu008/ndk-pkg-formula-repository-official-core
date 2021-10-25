package set summary "Text interface for Git repositories"
package set webpage "https://jonas.github.io/tig"
package set src.git "https://github.com/jonas/tig.git"
package set src.url "https://github.com/jonas/tig/releases/download/tig-2.5.4/tig-2.5.4.tar.gz"
package set src.sum "c48284d30287a6365f8a4750eb0b122e78689a1aef8ce1d2961b6843ac246aa7"
package set license "GPL-2.0-or-later"
package set dep.pkg "readline libiconv"
package set dep.cmd "pkg-config"
package set bsystem "configure"
package set binsrcd 'yes'

prepare() {
    # char* nl_langinfo(nl_item __item) __INTRODUCED_IN(26);
    if [ "$TARGET_OS_VERS" -lt 26 ] ; then
        sed_in_place '/nl_langinfo(CODESET)/d' src/tig.c
    fi
}
