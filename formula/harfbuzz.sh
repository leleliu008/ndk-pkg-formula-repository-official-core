package set summary "OpenType text shaping engine"
package set git.url "https://github.com/harfbuzz/harfbuzz.git"
package set src.url "https://github.com/harfbuzz/harfbuzz/archive/3.3.1.tar.gz"
package set src.sum "45aca6428d718e08872ad37647081c1b85c5b349c8419af84c04da17cf14b570"
package set license "MIT"
package set dep.pkg "icu4c glib graphite2"
package set bsystem "meson"

build() {
    mesonw \
        -Dicu=enabled \
        -Dglib=enabled \
        -Dcairo=disabled \
        -Dfreetype=enabled \
        -Dgraphite=disabled \
        -Dgraphite2=enabled \
        -Dgobject=disabled \
        -Dintrospection=disabled \
        -Ddocs=disabled \
        -Dtests=disabled \
        -Dbenchmark=disabled
}
