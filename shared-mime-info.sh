summary  "Database of common MIME types"
homepage "https://wiki.freedesktop.org/www/Software/shared-mime-info"
url      "https://gitlab.freedesktop.org/xdg/shared-mime-info/uploads/0440063a2e6823a4b1a6fb2f2af8350f/shared-mime-info-2.0.tar.xz"
sha256   "23c1cb7919f31cf97aeb5225548f75705f706aa5cc7d1c4c503364bcc8681e06"
license  "GPL-2.0"
requirements "meson ninja pkg-config itstool"
dependencies "libxml2 glib"

build() {
    meson -Dupdate-mimedb=false
}
