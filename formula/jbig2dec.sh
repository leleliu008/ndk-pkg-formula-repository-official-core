pkg_set summary "JBIG2 decoder and library (for monochrome documents)"
pkg_set webpage "https://jbig2dec.com/"
pkg_set src.url "https://github.com/ArtifexSoftware/ghostpdl-downloads/releases/download/gs9531/jbig2dec-0.19.tar.gz"
pkg_set src.sha "279476695b38f04939aa59d041be56f6bade3422003a406a85e9792c27118a37"
pkg_set license "AGPL-3.0-or-later"
pkg_set dep.pkg "libpng"
pkg_set bsystem "configure"

build() {
    configure  --with-libpng="$libpng_INSTALL_DIR"
}
