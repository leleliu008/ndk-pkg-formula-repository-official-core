pkg_set summary "CPU INFOrmation library"
pkg_set git.url "https://github.com/pytorch/cpuinfo.git"
pkg_set license "BSD-2-Clause"
pkg_set bsystem "cmake"

build() {
    cmakew \
        -DCPUINFO_BUILD_UNIT_TESTS=OFF \
        -DCPUINFO_BUILD_MOCK_TESTS=OFF \
        -DCPUINFO_BUILD_BENCHMARKS=OFF
}
