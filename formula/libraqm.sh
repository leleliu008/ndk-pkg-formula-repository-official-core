package set summary "Library for complex text layout"
package set src.git "https://github.com/HOST-Oman/libraqm.git"
package set src.url "https://github.com/HOST-Oman/libraqm/archive/v0.7.2.tar.gz"
package set src.sum "eeccbb0bf23ef77d8ff2be24a9c6c1547cc8e443d3d6b57814d73d44758d95c2"
package set license "MIT"
package set dep.cmd "pkg-config libtoolize gtkdocize"
package set dep.pkg "fribidi freetype2-with-harfbuzz"
package set bsystem "autogen"

build() {
    configure --disable-Werror
}
