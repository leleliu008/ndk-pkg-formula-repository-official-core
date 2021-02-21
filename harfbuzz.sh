summary "OpenType text shaping engine"
webpage "https://github.com/harfbuzz/harfbuzz"
src_url "https://github.com/harfbuzz/harfbuzz/archive/2.7.2.tar.gz"
src_sum "8ec112ee108642477478b75fc7906422abed404d7530e47ba0a4875f553f1b59"
license "MIT"
require "meson ninja"
depends "icu4c glib freetype2"
ldflags "-lbz2 -lz -lm -lbrotlidec -lbrotlicommon -lpng -lpcre"

build() {
    rm -f src/hb-version.h &&
    rm -f src/harfbuzz.cc  &&
    meson \
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
