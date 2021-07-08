package set summary "Improved top (interactive process viewer)"
package set webpage "https://htop.dev"
package set src.git "https://github.com/htop-dev/htop.git"
package set src.url "https://github.com/htop-dev/htop/archive/3.0.5.tar.gz"
package set src.sum "4c2629bd50895bd24082ba2f81f8c972348aa2298cc6edc6a21a7fa18b73990c"
package set license "GPL-2.0-or-later"
package set dep.pkg "ncurses"
package set bsystem "autogen"

prepare() {
    {
        # char* nl_langinfo(nl_item __item) __INTRODUCED_IN(26)
        if [ "$TARGET_OS_VERS" -lt 26 ] ; then
            sed_in_place 's/nl_langinfo(CODESET)/"UTF-8"/' CRT.c
        fi
    } &&
    sed_in_place '/keypad/d' configure.ac &&
    ./autogen.sh
}

build() {
    configure \
        --enable-unicode \
        ac_cv_search_keypad=no \
        ac_cv_lib_ncursesw6_addnwstr=no \
        ac_cv_lib_ncursesw_addnwstr=yes \
        ac_cv_lib_ncurses6_refresh=no \
        ac_cv_lib_ncurses_refresh=yes
}
