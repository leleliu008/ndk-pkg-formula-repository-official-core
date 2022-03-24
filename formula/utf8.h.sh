package set summary "single header utf8 string functions for C and C++"
package set git.url "https://github.com/sheredom/utf8.h.git"
package set binbstd "yes"

build() {
    install_incs utf8.h
}
