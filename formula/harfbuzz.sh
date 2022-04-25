pkg_set summary "OpenType text shaping engine"
pkg_set git.url "https://github.com/harfbuzz/harfbuzz.git"
pkg_set src.url "https://github.com/harfbuzz/harfbuzz/archive/4.2.0.tar.gz"
pkg_set src.sha "7152d1bdcbd2bf6ba777cfe9161d40564fe0a7583e04e55e0a057d5f4414d3c9"
pkg_set license "MIT"
pkg_set dep.pkg "icu4c glib graphite2"
pkg_set bsystem "meson"

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
