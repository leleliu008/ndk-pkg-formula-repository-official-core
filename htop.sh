summary "Improved top (interactive process viewer)"
webpage "https://htop.dev"
src_git "https://github.com/htop-dev/htop.git"
src_url "https://github.com/htop-dev/htop/archive/3.0.4.tar.gz"
src_sum "d8a0536ce95e3d59f8e292e73ee037033a74a8cc118fd10d22048bd4aeb61324"
license "GPL-2.0-or-later"
depends "ncurses"

prepare() {
    ./autogen.sh
}

build() {
    configure --disable-unicode
}
