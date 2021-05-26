package set summary "Pager program similar to more"
package set webpage "http://www.greenwoodsoftware.com/less/index.html"
package set src.url "http://www.greenwoodsoftware.com/less/less-551.tar.gz"
package set src.sum "ff165275859381a63f19135a8f1f6c5a194d53ec3187f94121ecd8ef0795fe3d"
package set license "GPL-3.0-or-later"
package set bsystem "configure"
package set dep.pkg "ncurses pcre2"

prepare() {
    # char* nl_langinfo(nl_item __item) __INTRODUCED_IN(26)
    if [ "$TARGET_OS_VERS" -lt 26 ] ; then
        sed_in_place 's/nl_langinfo(CODESET)/"UTF-8"/' charset.c
    fi
}

build() {
    configure \
        --with-regex='pcre2' \
        --with-secure
}
