summary="CSS parsing and manipulation toolkit for GNOME"
homepage="https://gitlab.gnome.org/GNOME/libcroco"
url="https://download.gnome.org/sources/libcroco/0.6/libcroco-0.6.13.tar.xz"
sha256="767ec234ae7aa684695b3a735548224888132e063f92db585759b422570621d4"
dependencies="glib libxml2"

build() {
    export LDFLAGS="$LDFLAGS -lpcre"
    configure \
        --disable-gtk-doc \
        --disable-Bsymbolic \
        --enable-checks
}
