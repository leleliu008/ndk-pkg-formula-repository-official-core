summary "OpenType text shaping engine"
src_git "https://github.com/harfbuzz/harfbuzz.git"
src_url "https://github.com/harfbuzz/harfbuzz/archive/2.7.4.tar.gz"
src_sum "daff8a4003ac420a8550760ed303ce33b310c8ea17b7f15b307d1969cabcebcb"
license "MIT"
bsystem "meson"
depends "icu4c glib freetype2"
ldflags "-lbz2 -lz -lm -lbrotlidec -lbrotlicommon -lpng -lpcre"

build() {
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
