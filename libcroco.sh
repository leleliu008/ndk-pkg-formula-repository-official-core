summary "CSS parsing and manipulation toolkit for GNOME"
webpage "https://gitlab.gnome.org/GNOME/libcroco"
src_url "https://download.gnome.org/sources/libcroco/0.6/libcroco-0.6.13.tar.xz"
src_sum "767ec234ae7aa684695b3a735548224888132e063f92db585759b422570621d4"
bsystem "configure"
depends "glib libxml2"
ldflags "-lpcre"

build() {
    configure \
        --disable-gtk-doc \
        --disable-Bsymbolic \
        --enable-checks
}
