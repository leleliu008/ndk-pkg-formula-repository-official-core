package set summary "CSS parsing and manipulation toolkit for GNOME"
package set webpage "https://gitlab.gnome.org/GNOME/libcroco"
package set src.url "https://download.gnome.org/sources/libcroco/0.6/libcroco-0.6.13.tar.xz"
package set src.sum "767ec234ae7aa684695b3a735548224888132e063f92db585759b422570621d4"
package set bsystem "configure"
package set dep.pkg "glib libxml2"
package set ldflags "-lpcre"

build() {
    configure \
        --disable-gtk-doc \
        --disable-Bsymbolic \
        --enable-checks
}
