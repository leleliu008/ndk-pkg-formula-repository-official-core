package set summary "Modernized, complete, self-contained TeX/LaTeX engine"
package set webpage "https://tectonic-typesetting.github.io/"
package set git.url "https://github.com/tectonic-typesetting/tectonic.git"
package set src.url "https://github.com/tectonic-typesetting/tectonic/archive/tectonic@0.8.2.tar.gz"
package set src.sum "1f92a5ff25725a9a4c0eefd4ea306da1e63f57c40d4ceb0972c7e5bb73297b4f"
package set license "MIT"
package set dep.pkg "fontconfig openssl"
package set dep.cmd "pkg-config"
package set bsystem "cargo"

build() {
    run ln -sf "$bzip2_LIBRARY_DIR/libbz2.so" "$TARGET_WORKING_DIR/lib/libbz2.so" &&
    cargow install --features external-harfbuzz
}
