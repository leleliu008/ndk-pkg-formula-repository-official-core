pkg_set summary "Make XML documents translatable through PO files"
pkg_set webpage "http://itstool.org"
pkg_set git.url "https://github.com/itstool/itstool.git"
pkg_set src.url "https://github.com/itstool/itstool/archive/2.0.6.tar.gz"
pkg_set src.sha "bda0b08e9a1db885c9d7d1545535e9814dd8931d5b8dd5ab4a47bd769d0130c6"
pkg_set license "GPL-3.0-or-later"
pkg_set dep.pkg "python"
pkg_set dep.pym "libxml2"
pkg_set bsystem "autogen"

build() {
    configure PYTHON=$(command -v python3 || command -v python3.9 || command -v python)
}
