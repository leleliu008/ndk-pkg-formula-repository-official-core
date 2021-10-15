package set summary "Make XML documents translatable through PO files"
package set webpage "http://itstool.org"
package set src.git "https://github.com/itstool/itstool.git"
package set src.url "https://github.com/itstool/itstool/archive/2.0.6.tar.gz"
package set src.sum "bda0b08e9a1db885c9d7d1545535e9814dd8931d5b8dd5ab4a47bd769d0130c6"
package set license "GPL-3.0"
package set dep.pkg "python"
package set dep.pip "libxml2"
package set bsystem "autogen"

build() {
    configure PYTHON=$(command -v python3 || command -v python3.9 || command -v python)
}