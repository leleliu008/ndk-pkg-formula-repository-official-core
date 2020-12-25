summary "OpenType text shaping engine"
webpage "https://github.com/harfbuzz/harfbuzz"
src_url "https://github.com/harfbuzz/harfbuzz/archive/2.7.2.tar.gz"
src_sum "8ec112ee108642477478b75fc7906422abed404d7530e47ba0a4875f553f1b59"
license "MIT"
require "meson"
depends "icu4c glib freetype"

build() {
    export LDFLAGS="$LDFLAGS -lbz2 -lz -lm -lbrotlidec -lbrotlicommon -lpng"
    meson \
        -Dicu=enabled \
        -Dglib=enabled \
        -Dfreetype=enabled \
        -Dgobject=disabled \
        -Dcairo=disabled \
        -Dfontconfig=disabled \
        -Dgraphite=disabled \
        -Dintrospection=disabled \
        -Dtests=disabled \
        -Ddocs=disabled \
        -Dbenchmark=disabled
}
