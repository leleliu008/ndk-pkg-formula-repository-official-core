package set summary "Generate C-based recognizers from regular expressions"
package set webpage "https://re2c.org"
package set git.url "https://github.com/skvadrik/re2c.git"
package set src.url "https://github.com/skvadrik/re2c/releases/download/2.2/re2c-2.2.tar.xz"
package set src.sum "0fc45e4130a8a555d68e230d1795de0216dfe99096b61b28e67c86dfd7d86bda"
package set bsystem "cmake"

build() {
    cmakew \
        -DRE2C_REBUILD_DOCS=OFF \
        -DRE2C_BUILD_RE2GO=OFF \
        -DRE2C_BUILD_LIBS=ON
}
