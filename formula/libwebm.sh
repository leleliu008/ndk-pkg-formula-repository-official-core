package set summary "WebM container"
package set webpage "https://www.webmproject.org/"
package set src.git "https://github.com/webmproject/libwebm.git"
package set src.url "https://github.com/webmproject/libwebm/archive/libwebm-1.0.0.28.tar.gz"
package set src.sum "4df11d93260d3cd9f17c3697b0828d38400a8f87082183368df6a1ae7a9fc635"
package set license "BSD-3-Clause"
package set bsystem "cmake"

build() {
    cmakew &&
    run install_libs libwebm.so &&
    run install_bins mkvmuxer_sample mkvparser_sample vttdemux dumpvtt webm2ts webm2pes webm_info
}
