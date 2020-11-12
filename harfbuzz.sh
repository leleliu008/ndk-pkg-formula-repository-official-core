summary="OpenType text shaping engine"
homepage="https://github.com/harfbuzz/harfbuzz"
url="https://github.com/harfbuzz/harfbuzz/archive/2.7.2.tar.gz"
sha256="8ec112ee108642477478b75fc7906422abed404d7530e47ba0a4875f553f1b59"
license="MIT"

build() {
    meson \
        -Dicu=enable \
        -Dglib=enable \
        -Dfreetype=enable \
        -Dgobject=disable \
        -Dcairo=disable \
        -Dfontconfig=disable \
        -Dgraphite=disable \
        -Dintrospection=disable \
        -Dtests=disable \
        -Ddocs=disable \
        -Dbenchmark=disable
}
