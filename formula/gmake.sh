package set summary "Utility for directing compilation"
package set webpage "https://www.gnu.org/software/make"
package set src.url "https://ftp.gnu.org/gnu/make/make-4.3.tar.gz"
package set src.sum "e05fdde47c5f7ca45cb697e973894ff4f5d79e13b750ed57d7b66d8defc78e19"
package set license "GPL-3.0-or-later"
package set bsystem "configure"

prepare() {
    sed_in_place '/sigsetmask (siggetmask (0) & ~fatal_signal_mask)/a ;' src/job.c
}

build() {
    configure \
        --without-guile \
        --without-dmalloc \
        ac_cv_func_sigsetmask=no
}
