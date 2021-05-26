package set summary "C library and utilities for Manipulating Filesystem Extended Attributes"
package set webpage "https://savannah.nongnu.org/projects/attr"
package set version "2.4.48"
package set src.url "https://mirrors.tuna.tsinghua.edu.cn/debian/pool/main/a/attr/attr_${PACKAGE_VERSION}.orig.tar.gz"
package set src.sum "5ead72b358ec709ed00bbf7a9eaef1654baad937c001c044fe8b74c57f5324e7"
package set bsystem "configure"

# void seekdir(DIR* __dir, long __location) __INTRODUCED_IN(23);
# long telldir(DIR* __dir) __INTRODUCED_IN(23);
package set sdk.api 23
