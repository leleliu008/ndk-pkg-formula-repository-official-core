pkg_set summary "OpenType text shaping engine"
pkg_set git.url "https://github.com/harfbuzz/harfbuzz.git"
pkg_set src.url "https://github.com/harfbuzz/harfbuzz/archive/4.2.1.tar.gz"
pkg_set src.sha "99fcd30e2f4c66d05af3d61ad4cdba2abc2a51ecabb7eb6dc222520a892b50b0"
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
