summary "Pager program similar to more"
webpage "http://www.greenwoodsoftware.com/less/index.html"
src_url "http://www.greenwoodsoftware.com/less/less-551.tar.gz"
src_sum "ff165275859381a63f19135a8f1f6c5a194d53ec3187f94121ecd8ef0795fe3d"
license "GPL-3.0-or-later"
bsystem "configure"
depends "ncurses pcre2"

build() {
    configure \
        --with-regex='pcre2' \
        --with-secure
}
