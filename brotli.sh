summary  "Generic-purpose lossless compression algorithm by Google"
homepage "https://github.com/google/brotli"
version  "1.0.7"
url      "https://mirrors.tuna.tsinghua.edu.cn/debian/pool/main/b/brotli/brotli_$(version).orig.tar.gz"
sha256   "4c61bfb0faca87219ea587326c467b95acb25555b53d1a421ffa3c8a9296ee2c"

build() {
    cmake
}
