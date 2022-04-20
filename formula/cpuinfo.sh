package set summary "CPU INFOrmation library"
package set git.url "https://github.com/pytorch/cpuinfo.git"
package set license "BSD-2-Clause"
package set bsystem "cmake"

build() {
    cmakew \
        -DCPUINFO_BUILD_UNIT_TESTS=OFF \
        -DCPUINFO_BUILD_MOCK_TESTS=OFF \
        -DCPUINFO_BUILD_BENCHMARKS=OFF
}
