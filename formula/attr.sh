package set summary "C library and utilities for Manipulating Filesystem Extended Attributes"
package set webpage "https://savannah.nongnu.org/projects/attr"
package set src.url "https://download.savannah.nongnu.org/releases/attr/attr-2.5.1.tar.gz"
package set src.sum "bae1c6949b258a0d68001367ce0c741cebdacdd3b62965d17e5eb23cd78adaf8"
package set bsystem "configure"

# void seekdir(DIR* __dir, long __location) __INTRODUCED_IN(23);
# long telldir(DIR* __dir) __INTRODUCED_IN(23);
package set sdk.api 23
