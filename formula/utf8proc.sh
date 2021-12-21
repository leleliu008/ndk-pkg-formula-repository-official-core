package set summary "Clean C library for processing UTF-8 Unicode data"
package set webpage "https://juliastrings.github.io/utf8proc"
package set src.git "https://github.com/JuliaStrings/utf8proc.git"
package set src.url "https://github.com/JuliaStrings/utf8proc/archive/v2.7.0.tar.gz"
package set src.sum "4bb121e297293c0fd55f08f83afab6d35d48f0af4ecc07523ad8ec99aa2b12a1"
package set license "MIT"
package set bsystem "cmake"

build() {
    cmakew \
        -DUTF8PROC_INSTALL=ON \
        -DUTF8PROC_ENABLE_TESTING=OFF 
}
