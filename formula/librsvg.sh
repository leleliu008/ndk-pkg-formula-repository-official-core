pkg_set summary "Library to render SVG files using Cairo"
pkg_set webpage "https://wiki.gnome.org/Projects/LibRsvg"
pkg_set git.url "https://gitlab.gnome.org/GNOME/librsvg.git"
pkg_set src.url "https://download-fallback.gnome.org/sources/librsvg/2.54/librsvg-2.54.1.tar.xz"
pkg_set src.sha "d5557efbdcc415a4180e1116b7f736cb711b253d110d95fa86ec830f70026625"
pkg_set license "LGPL-2.1-or-later"
pkg_set dep.pkg "gdk-pixbuf pango"
pkg_set dep.cmd "pkg-config gdk-pixbuf-query-loaders"
pkg_set bsystem "configure cargo"

build() {
    # https://gitlab.gnome.org/GNOME/librsvg/-/issues/411
    if [ -d "/usr/lib/x86_64-linux-gnu/gdk-pixbuf-2.0/" ] ; then
        export PATH="/usr/lib/x86_64-linux-gnu/gdk-pixbuf-2.0/:$PATH"
    fi

    export LDFLAGS="$LDFLAGS -Wl,-z,muldefs"

    configure \
        --enable-tools=yes \
        --enable-pixbuf-loader=yes \
        --enable-introspection=no \
        --disable-static
}
