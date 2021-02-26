summary "Database of common MIME types"
webpage "https://wiki.freedesktop.org/www/Software/shared-mime-info"
src_url "https://gitlab.freedesktop.org/xdg/shared-mime-info/uploads/0440063a2e6823a4b1a6fb2f2af8350f/shared-mime-info-2.0.tar.xz"
src_sum "23c1cb7919f31cf97aeb5225548f75705f706aa5cc7d1c4c503364bcc8681e06"
license "GPL-2.0"
require "meson ninja pkg-config itstool xmlto xmllint xsltproc"
depends "libxml2 glib"
ldflags "-lgmodule-2.0 -lffi -lz"

prepare() {
    sed_in_place "s|xmlto,|xmlto, '--skip-validation',|" data/meson.build
}

build() {
    meson -Dupdate-mimedb=false
}
