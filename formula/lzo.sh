pkg_set summary "Real-time data compression library"
pkg_set webpage "https://www.oberhumer.com/opensource/lzo"
pkg_set src.url "https://www.oberhumer.com/opensource/lzo/download/lzo-2.10.tar.gz"
pkg_set src.sha "c0f892943208266f9b6543b3ae308fab6284c5c90e627931446fb49b4221a072"
pkg_set license "GPL-2.0-or-later"
pkg_set bsystem "cmake"

build() {
    cmakew \
        -DENABLE_STATIC=ON \
        -DENABLE_SHARED=ON
}
