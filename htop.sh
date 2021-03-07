summary "Improved top (interactive process viewer)"
webpage "https://htop.dev"
src_git "https://github.com/htop-dev/htop.git"
src_url "https://github.com/htop-dev/htop/archive/3.0.4.tar.gz"
src_sum "d8a0536ce95e3d59f8e292e73ee037033a74a8cc118fd10d22048bd4aeb61324"
license "GPL-2.0-or-later"
bsystem "autogen"
depends "ncurses"

prepare() {
    sed_in_place '/keypad/d' configure.ac &&
    ./autogen.sh
}

build() {
    # error: undefined reference to 'nl_langinfo'
    configure \
        --disable-unicode \
        ac_cv_search_keypad=no \
        ac_cv_lib_ncurses_refresh=yes \
        ac_cv_lib_ncurses_addnwstr=yes
}
