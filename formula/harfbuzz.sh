package set summary "OpenType text shaping engine"
package set src.git "https://github.com/harfbuzz/harfbuzz.git"
package set src.url "https://github.com/harfbuzz/harfbuzz/archive/3.2.0.tar.gz"
package set src.sum "41b38daa13ebdba39fae3b5fb2abbf5f9ccd9121bfa7f47b18d51aa733f80aad"
package set license "MIT"
package set dep.pkg "icu4c glib freetype2"
package set bsystem "meson"

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
