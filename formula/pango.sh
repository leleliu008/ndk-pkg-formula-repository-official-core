pkg_set summary "Framework for layout and rendering of i18n text"
pkg_set webpage "https://www.pango.org"
pkg_set git.url "https://gitlab.gnome.org/GNOME/pango.git"
pkg_set src.url "https://download.gnome.org/sources/pango/1.50/pango-1.50.6.tar.xz"
pkg_set src.sha "a998bcf36881c3ac20495d40bceb304f4eaa9175bd2967c85656434cbdafe86a"
pkg_set license "LGPL-2.0-or-later;COPYING;https://gitlab.gnome.org/GNOME/pango/-/raw/main/COPYING"
pkg_set dep.pkg "cairo fribidi harfbuzz"
pkg_set dep.cmd "pkg-config glib-mkenums"
pkg_set bsystem "meson"

build() {
    mesonw \
        -Dgtk_doc=false \
        -Dinstall-tests=false \
        -Dcairo=enabled \
        -Dfreetype=enabled \
        -Dfontconfig=enabled
}
