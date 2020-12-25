summary "C library and utilities for Manipulating Filesystem Extended Attributes"
webpage "https://savannah.nongnu.org/projects/attr"
version "2.4.48"
src_url "https://mirrors.tuna.tsinghua.edu.cn/debian/pool/main/a/attr/attr_$(version).orig.tar.gz"
src_sum "5ead72b358ec709ed00bbf7a9eaef1654baad937c001c044fe8b74c57f5324e7"

# void seekdir(DIR* __dir, long __location) __INTRODUCED_IN(23);
# long telldir(DIR* __dir) __INTRODUCED_IN(23);

build() {
    configure
}
