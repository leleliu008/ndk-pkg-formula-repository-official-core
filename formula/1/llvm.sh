package set summary "Next-gen compiler infrastructure"
package set webpage "https://llvm.org"
package set git.url "https://github.com/llvm/llvm-project.git"
package set src.url "https://github.com/llvm/llvm-project/releases/download/llvmorg-13.0.0/llvm-project-13.0.0.src.tar.xz"
package set src.sum "6075ad30f1ac0e15f07c1bf062c1e1268c241d674f11bd32cdf0e040c71f2bf3"
package set license "Apache-2.0"
package set dep.pkg "libxml2 libedit libffi"
package set dep.cmd "pkg-config python3:python"
package set bscript "llvm"
package set bsystem "cmake"

build02() {
    cmakew -DLLVM_ENABLE_PROJECTS=clang
}

prepare() {
    printf '%s\n' 'INPUT(-lc)' > ../libgcc_s.a
}

# https://llvm.org/docs/GettingStarted.html
# https://llvm.org/docs/HowToCrossCompileLLVM.html
build() {
    case $TARGET_OS_ARCH in
        armv7a)  LLVM_TARGETS_TO_BUILD=ARM     ;;
        aarch64) LLVM_TARGETS_TO_BUILD=AArch64 ;;
        i686)    LLVM_TARGETS_TO_BUILD=X86     ;;
        x86_64)  LLVM_TARGETS_TO_BUILD=X86     ;;
    esac

    cmakew \
        -DANDROID_USE_LEGACY_TOOLCHAIN_FILE=ON \
        -DCMAKE_CROSSCOMPILING=ON \
        -DLLVM_TABLEGEN=$(command -v llvm-tblgen) \
        -DLLVM_ENABLE_PROJECTS="'clang;clang-tools-extra;compiler-rt;lld;lldb;openmp;polly'" \
        -DLLVM_TARGETS_TO_BUILD="'$LLVM_TARGETS_TO_BUILD;WebAssembly'" \
        -DLLVM_DEFAULT_TARGET_TRIPLE="$TARGET_TRIPLE" \
        -DLLVM_INCLUDE_BENCHMARKS=OFF \
        -DLLVM_INCLUDE_EXAMPLES=OFF \
        -DLLVM_INCLUDE_TESTS=OFF \
        -DLLVM_INCLUDE_TOOLS=ON \
        -DLLVM_INCLUDE_DOCS=OFF \
        -DLLVM_BUILD_BENCHMARKS=OFF \
        -DLLVM_BUILD_EXAMPLES=OFF \
        -DLLVM_BUILD_TESTS=OFF \
        -DLLVM_BUILD_TOOLS=ON \
        -DLLVM_ENABLE_ZLIB=ON \
        -DLLVM_ENABLE_PIC=ON \
        -DCLANG_DEFAULT_CXX_STDLIB=libc++ \
        -DCLANG_DEFAULT_LINKER=lld \
        -DCLANG_INCLUDE_TESTS=OFF \
        -DCLANG_TOOL_C_INDEX_TEST_BUILD=OFF \
        -DZLIB_INCLUDE_DIR="$zlib_INCLUDE_DIR" \
        -DZLIB_LIBRARY_RELEASE="$zlib_LIBRARY_DIR/libz.so"
}
