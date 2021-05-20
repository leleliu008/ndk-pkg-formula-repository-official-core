package set summary "Real-time data compression library"
package set webpage "https://www.oberhumer.com/opensource/lzo"
package set src.url "https://www.oberhumer.com/opensource/lzo/download/lzo-2.10.tar.gz"
package set src.sum "c0f892943208266f9b6543b3ae308fab6284c5c90e627931446fb49b4221a072"
package set bsystem "cmake"

build() {
    cmakew \
    -DENABLE_STATIC=ON \
    -DENABLE_SHARED=ON
}
