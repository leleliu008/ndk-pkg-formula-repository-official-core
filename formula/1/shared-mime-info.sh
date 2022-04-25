pkg_set summary "Database of common MIME types"
pkg_set webpage "https://wiki.freedesktop.org/www/Software/shared-mime-info"
pkg_set git.url "https://gitlab.freedesktop.org/xdg/shared-mime-info.git"
pkg_set src.url "https://gitlab.freedesktop.org/xdg/shared-mime-info/uploads/0440063a2e6823a4b1a6fb2f2af8350f/shared-mime-info-2.0.tar.xz"
pkg_set src.sha "23c1cb7919f31cf97aeb5225548f75705f706aa5cc7d1c4c503364bcc8681e06"
pkg_set license "GPL-2.0-or-later"
pkg_set bsystem "meson"
pkg_set dep.cmd "pkg-config itstool xmlto xmllint xsltproc"
pkg_set dep.pkg "libxml2 glib"
pkg_set ldflags "-lgmodule-2.0 -lffi -lz"

prepare() {
    sed_in_place "s|xmlto,|xmlto, '--skip-validation',|" data/meson.build
}

build() {
    mesonw -Dupdate-mimedb=false
}
