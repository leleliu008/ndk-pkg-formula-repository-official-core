pkg_set summary "A simple header-only C++ argument parser library."
pkg_set git.url "https://github.com/Taywee/args.git"
pkg_set src.url "https://github.com/Taywee/args/archive/refs/tags/6.3.0.tar.gz"
pkg_set src.sha "e072c4a9d6990872b0ecb45480a5487db82e0dc3d27c3c3eb9fc0930c0d796ae"
pkg_set license "MIT"
pkg_set bsystem "cmake"

build() {
    cmakew \
        -DARGS_BUILD_EXAMPLE=OFF \
        -DARGS_BUILD_UNITTESTS=OFF
}
