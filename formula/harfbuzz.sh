package set summary "OpenType text shaping engine"
package set src.git "https://github.com/harfbuzz/harfbuzz.git"
package set src.url "https://github.com/harfbuzz/harfbuzz/archive/3.1.2.tar.gz"
package set src.sum "c27d2640e70e95bdbc2fbeca2f9cc212ee583da1149c9f6dacf1316217652e56"
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
        -Dgobject=disabled \
        -Dintrospection=disabled \
        -Ddocs=disabled \
        -Dtests=disabled \
        -Dbenchmark=disabled
}
