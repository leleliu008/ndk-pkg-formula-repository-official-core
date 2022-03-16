package set summary "OpenType text shaping engine"
package set git.url "https://github.com/harfbuzz/harfbuzz.git"
package set src.url "https://github.com/harfbuzz/harfbuzz/archive/4.0.1.tar.gz"
package set src.sum "449edee95208344d75f8e886da6ae390a3e1002e5b3ca4eb7ed42e69958491e2"
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
