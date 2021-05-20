package set summary "Database of common MIME types"
package set webpage "https://wiki.freedesktop.org/www/Software/shared-mime-info"
package set src.git "https://gitlab.freedesktop.org/xdg/shared-mime-info.git"
package set src.url "https://gitlab.freedesktop.org/xdg/shared-mime-info/uploads/0440063a2e6823a4b1a6fb2f2af8350f/shared-mime-info-2.0.tar.xz"
package set src.sum "23c1cb7919f31cf97aeb5225548f75705f706aa5cc7d1c4c503364bcc8681e06"
package set license "GPL-2.0"
package set bsystem "meson"
package set dep.cmd "pkg-config itstool xmlto xmllint xsltproc"
package set dep.pkg "libxml2 glib"
package set ldflags "-lgmodule-2.0 -lffi -lz"

prepare() {
    sed_in_place "s|xmlto,|xmlto, '--skip-validation',|" data/meson.build
}

build() {
    mesonw -Dupdate-mimedb=false
}
