pkg_set summary "Modernized, complete, self-contained TeX/LaTeX engine"
pkg_set webpage "https://tectonic-typesetting.github.io/"
pkg_set git.url "https://github.com/tectonic-typesetting/tectonic.git"
pkg_set src.url "https://github.com/tectonic-typesetting/tectonic/archive/tectonic@0.9.0.tar.gz"
pkg_set src.sha "a239ca85bff1955792b2842fabfa201ba9576d916ece281278781f42c7547b9f"
pkg_set license "MIT"
pkg_set dep.pkg "fontconfig openssl"
pkg_set dep.cmd "pkg-config"
pkg_set bsystem "cargo"

build() {
    cargow install --features external-harfbuzz
}
