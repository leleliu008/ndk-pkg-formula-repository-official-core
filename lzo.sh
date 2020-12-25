summary "Real-time data compression library"
webpage "https://www.oberhumer.com/opensource/lzo"
src_url "https://www.oberhumer.com/opensource/lzo/download/lzo-2.10.tar.gz"
src_sum "c0f892943208266f9b6543b3ae308fab6284c5c90e627931446fb49b4221a072"

build() {
    cmake \
    -DENABLE_STATIC=ON \
    -DENABLE_SHARED=ON
}
