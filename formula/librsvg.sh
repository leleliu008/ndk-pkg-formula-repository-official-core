package set summary "Library to render SVG files using Cairo"
package set webpage "https://wiki.gnome.org/Projects/LibRsvg"
package set git.url "https://gitlab.gnome.org/GNOME/librsvg.git"
package set src.url "https://download-fallback.gnome.org/sources/librsvg/2.52/librsvg-2.52.8.tar.xz"
package set src.sum "bade8eda74f2d7efb414e9bae53004806e1fa7dc05f04cad59b74eb1a5756962"
package set license "LGPL-2.1-or-later"
package set dep.pkg "gdk-pixbuf pango"
package set dep.cmd "pkg-config gdk-pixbuf-query-loaders"
package set bsystem "configure cargo"

build() {
    # https://gitlab.gnome.org/GNOME/librsvg/-/issues/411
    if [ -d "/usr/lib/x86_64-linux-gnu/gdk-pixbuf-2.0/" ] ; then
        export PATH="/usr/lib/x86_64-linux-gnu/gdk-pixbuf-2.0/:$PATH"
    fi

    export LDFLAGS="$LDFLAGS -Wl,-z,muldefs"

    ln -s "$libjpeg_turbo_LIBRARY_DIR/libjpeg.a" "$TARGET_WORKING_DIR/lib/libjpeg.a" || return 1
    ln -s "$gettext_LIBRARY_DIR/libintl.a"       "$TARGET_WORKING_DIR/lib/libintl.a" || return 1
    ln -s "$bzip2_LIBRARY_DIR/libbz2.a"          "$TARGET_WORKING_DIR/lib/libbz2.a"  || return 1

    configure \
        --enable-tools=yes \
        --enable-pixbuf-loader=yes \
        --enable-introspection=no \
        --disable-static
}
