package set summary "Serialization library for C++, supporting Java, C#, and Go"
package set webpage "https://google.github.io/flatbuffers"
package set git.url "https://github.com/google/flatbuffers.git"
package set src.url "https://github.com/google/flatbuffers/archive/v2.0.0.tar.gz"
package set src.sum "9ddb9031798f4f8754d00fca2f1a68ecf9d0f83dfac7239af1311e4fd9a565c4"
package set license "Apache-2.0"
package set bsystem "cmake"

build() {
    cmakew \
        -DFLATBUFFERS_BUILD_TESTS=OFF \
        -DFLATBUFFERS_BUILD_BENCHMARKS=OFF
}
