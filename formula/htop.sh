package set summary "Improved top (interactive process viewer)"
package set webpage "https://htop.dev"
package set src.git "https://github.com/htop-dev/htop.git"
package set src.url "https://github.com/htop-dev/htop/archive/3.0.4.tar.gz"
package set src.sum "d8a0536ce95e3d59f8e292e73ee037033a74a8cc118fd10d22048bd4aeb61324"
package set license "GPL-2.0-or-later"
package set bsystem "autogen"
package set dep.pkg "ncurses"

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
        ac_cv_search_keypad=no \
        ac_cv_lib_ncurses_refresh=yes \
        ac_cv_lib_ncurses_addnwstr=yes
}
