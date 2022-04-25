pkg_set summary "single header utf8 string functions for C and C++"
pkg_set git.url "https://github.com/sheredom/utf8.h.git"
pkg_set license "Unlicense"
pkg_set binbstd "yes"

build() {
    install_incs utf8.h
}
