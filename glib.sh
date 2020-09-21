summary="Core application library for C"
homepage="https://developer.gnome.org/glib"
url="https://download.gnome.org/sources/glib/2.66/glib-2.66.0.tar.xz"
sha256="c5a66bf143065648c135da4c943d2ac23cce15690fc91c358013b2889111156c"
license="LGPL-2.1-or-later"
dependencies="libiconv gettext libffi pcre"

build() {
    export LDFLAGS="$LDFLAGS -lm -lz"
    meson \
    -Dnls=disabled \
    -Dman=false \
    -Dgtk_doc=false \
    -Diconv=external \
    -Ddtrace=false \
    -Dinternal_pcre=false \
    -Dinstalled_tests=false \
    -Dbsymbolic_functions=false
}
