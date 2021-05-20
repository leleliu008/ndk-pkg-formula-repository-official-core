package set summary "OpenType text shaping engine"
package set src.git "https://github.com/harfbuzz/harfbuzz.git"
package set src.url "https://github.com/harfbuzz/harfbuzz/archive/2.7.4.tar.gz"
package set src.sum "daff8a4003ac420a8550760ed303ce33b310c8ea17b7f15b307d1969cabcebcb"
package set license "MIT"
package set bsystem "meson"
package set dep.pkg "icu4c glib freetype2"
package set ldflags "-lbz2 -lz -lm -lbrotlidec -lbrotlicommon -lpng -lpcre"

build() {
    mesonw \
        -Dicu=enabled \
        -Dglib=enabled \
        -Dcairo=disabled \
        -Dfreetype=enabled \
        -Dgraphite=disabled \
        -Dfontconfig=disabled \
        -Dgobject=disabled \
        -Dintrospection=disabled \
        -Ddocs=disabled \
        -Dtests=disabled \
        -Dbenchmark=disabled
}
