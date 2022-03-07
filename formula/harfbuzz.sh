package set summary "OpenType text shaping engine"
package set git.url "https://github.com/harfbuzz/harfbuzz.git"
package set src.url "https://github.com/harfbuzz/harfbuzz/archive/4.0.0.tar.gz"
package set src.sum "4880c25022100c31aef4bdea084be2fe58020f9756e94151b8d1cbf0be1ed54c"
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
