pkg_set summary "Modernized, complete, self-contained TeX/LaTeX engine"
pkg_set webpage "https://tectonic-typesetting.github.io/"
pkg_set git.url "https://github.com/tectonic-typesetting/tectonic.git"
pkg_set src.url "https://github.com/tectonic-typesetting/tectonic/archive/tectonic@0.8.2.tar.gz"
pkg_set src.sha "1f92a5ff25725a9a4c0eefd4ea306da1e63f57c40d4ceb0972c7e5bb73297b4f"
pkg_set license "MIT"
pkg_set dep.pkg "fontconfig openssl"
pkg_set dep.cmd "pkg-config"
pkg_set bsystem "cargo"

build() {
    run ln -sf "$bzip2_LIBRARY_DIR/libbz2.so" "$TARGET_WORKING_DIR/lib/libbz2.so" &&
    cargow install --features external-harfbuzz
}
