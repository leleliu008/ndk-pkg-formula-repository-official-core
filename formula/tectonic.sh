package set summary "Modernized, complete, self-contained TeX/LaTeX engine"
package set webpage "https://tectonic-typesetting.github.io/"
package set git.url "https://github.com/tectonic-typesetting/tectonic.git"
package set src.url "https://github.com/tectonic-typesetting/tectonic/archive/tectonic@0.8.0.tar.gz"
package set src.sum "794cf34aee017b8a4288ed509a4e9d550a36aadc2bc0d35b1727d1135dac8e02"
package set license "MIT"
package set dep.pkg "fontconfig openssl"
package set dep.cmd "pkg-config"
package set bsystem "cargo"

build() {
    run ln -sf "$bzip2_LIBRARY_DIR/libbz2.so" "$WORK_DIR/$TIMESTAMP_UNIX/libbz2.so" &&
    cargow install --features external-harfbuzz
}
