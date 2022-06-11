pkg_set summary "Pager program similar to more"
pkg_set webpage "http://www.greenwoodsoftware.com/less/index.html"
pkg_set src.url "http://www.greenwoodsoftware.com/less/less-590.tar.gz"
pkg_set src.sha "6aadf54be8bf57d0e2999a3c5d67b1de63808bb90deb8f77b028eafae3a08e10"
pkg_set license "GPL-3.0-or-later"
pkg_set dep.pkg "ncurses pcre2 liblanginfo"
pkg_set bsystem "configure"

build() {
    configure \
        --with-regex='pcre2' \
        --with-secure
}
