package set summary "JBIG2 decoder and library (for monochrome documents)"
package set webpage "https://jbig2dec.com/"
package set src.url "https://github.com/ArtifexSoftware/ghostpdl-downloads/releases/download/gs9531/jbig2dec-0.19.tar.gz"
package set src.sum "279476695b38f04939aa59d041be56f6bade3422003a406a85e9792c27118a37"
package set license "AGPL-3.0-or-later"
package set dep.pkg "libpng"
package set bsystem "configure"

build() {
    configure  --with-libpng="$libpng_INSTALL_DIR"
}
