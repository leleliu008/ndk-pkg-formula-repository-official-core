pkg_set summary "WebM container"
pkg_set webpage "https://www.webmproject.org/"
pkg_set git.url "https://github.com/webmproject/libwebm.git"
pkg_set src.url "https://github.com/webmproject/libwebm/archive/libwebm-1.0.0.28.tar.gz"
pkg_set src.sha "4df11d93260d3cd9f17c3697b0828d38400a8f87082183368df6a1ae7a9fc635"
pkg_set license "BSD-3-Clause"
pkg_set bsystem "cmake"

build() {
    cmakew &&
    run install_libs libwebm.so &&
    run install_bins mkvmuxer_sample mkvparser_sample vttdemux dumpvtt webm2ts webm2pes webm_info
}
