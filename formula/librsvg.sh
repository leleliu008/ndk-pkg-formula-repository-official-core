package set summary "Library to render SVG files using Cairo"
package set webpage "https://wiki.gnome.org/Projects/LibRsvg"
package set src.git "https://gitlab.gnome.org/GNOME/librsvg.git"
package set src.url "https://download.gnome.org/sources/librsvg/2.50/librsvg-2.50.7.tar.xz"
package set src.sum "fffb61b08cd5282aaae147a02b305166a7426fad22a8b9427708f0f2fc426ebc"
package set license "LGPL-2.1-or-later"
package set dep.pkg "gdk-pixbuf pango"
package set dep.cmd "pkg-config gdk-pixbuf-query-loaders"
package set bsystem "configure cargo"

build() {
    # https://gitlab.gnome.org/GNOME/librsvg/-/issues/411
    if [ -d "/usr/lib/x86_64-linux-gnu/gdk-pixbuf-2.0/" ] ; then
        export PATH="/usr/lib/x86_64-linux-gnu/gdk-pixbuf-2.0/:$PATH"
    fi

    configure \
        --enable-tools=yes \
        --enable-pixbuf-loader=yes \
        --enable-introspection=no
}
