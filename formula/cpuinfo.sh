package set summary "CPU INFOrmation library"
package set src.git "https://github.com/pytorch/cpuinfo.git"
package set bsystem "cmake"

build() {
    cmakew \
        -DCPUINFO_BUILD_UNIT_TESTS=OFF \
        -DCPUINFO_BUILD_MOCK_TESTS=OFF \
        -DCPUINFO_BUILD_BENCHMARKS=OFF
}
