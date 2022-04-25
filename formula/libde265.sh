pkg_set summary "Open h.265 video codec implementation"
pkg_set git.url "https://github.com/strukturag/libde265.git"
pkg_set src.url "https://github.com/strukturag/libde265/releases/download/v1.0.8/libde265-1.0.8.tar.gz"
pkg_set src.sha "24c791dd334fa521762320ff54f0febfd3c09fc978880a8c5fbc40a88f21d905"
pkg_set license "LGPL-3.0-or-later"
pkg_set bsystem "cmake"

build() {
    cmakew \
        -DENABLE_SDL=OFF \
        -DDISABLE_SSE=ON
}
