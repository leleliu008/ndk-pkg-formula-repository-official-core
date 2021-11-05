package set summary "OpenType text shaping engine"
package set src.git "https://github.com/harfbuzz/harfbuzz.git"
package set src.url "https://github.com/harfbuzz/harfbuzz/archive/3.3.0.tar.gz"
package set src.sum "55f7e36671b8c5569b6438f80efed2fd663298f785ad2819e115b35b5587ef69"
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
