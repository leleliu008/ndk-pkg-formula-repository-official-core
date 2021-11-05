package set summary "Core application library for C"
package set webpage "https://developer.gnome.org/glib"
package set src.url "https://download.gnome.org/sources/glib/2.70/glib-2.70.1.tar.xz"
package set src.sum "f9b7bce7f51753a1f43853bbcaca8bf09e15e994268e29cfd7a76f65636263c0"
package set license "LGPL-2.1-or-later"
package set bsystem "meson"
package set dep.pkg "libiconv gettext libffi pcre zlib"
package set ldflags "-lpcre -liconv -lm -lz"

build() {
    mesonw \
        -Dnls=disabled \
        -Dman=false \
        -Dgtk_doc=false \
        -Diconv=external \
        -Ddtrace=false \
        -Dinternal_pcre=false \
        -Dinstalled_tests=false \
        -Dbsymbolic_functions=false
}
