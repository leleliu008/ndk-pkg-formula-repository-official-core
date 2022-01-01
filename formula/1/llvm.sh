package set summary "Next-gen compiler infrastructure"
package set webpage "https://llvm.org"
package set git.url "https://github.com/llvm/llvm-project.git"
package set src.url "https://github.com/llvm/llvm-project/releases/download/llvmorg-12.0.0/llvm-project-12.0.0.src.tar.xz"
package set src.sum "9ed1688943a4402d7c904cc4515798cdb20080066efa010fe7e1f2551b423628"
package set license "Apache-2.0"
package set bsystem "cmake"
package set sourced "llvm"
package set dep.pkg "zlib"

build0() {
    cmakew -DLLVM_ENABLE_PROJECTS=clang
}

# https://llvm.org/docs/GettingStarted.html
llvm_targets_to_build() {
    case $1 in
        armv7a)  echo ARM     ;;
        aarch64) echo AArch64 ;;
        i686)    echo X86     ;;
        x86_64)  echo x86_64  ;;
    esac
}

# https://llvm.org/docs/HowToCrossCompileLLVM.html
build() {

    cmakew \
        -DCMAKE_CROSSCOMPILING=True \
        -DLLVM_TABLEGEN=$NATIVE_INSTALL_DIR/bin/llvm-tblgen \
        -DCLANG_TABLEGEN=$NATIVE_INSTALL_DIR/bin/clang-tblgen \
        -DLLVM_ENABLE_PROJECTS="'lld;clang'" \
        -DLLVM_TARGETS_TO_BUILD="'$(llvm_targets_to_build "$TARGET_OS_ARCH");WebAssembly'" \
        -DLLVM_DEFAULT_TARGET_TRIPLE="$TARGET_TRIPLE" \
        -DLLVM_ENABLE_ZLIB=ON \
        -DLLVM_INCLUDE_BENCHMARKS=OFF \
        -DLLVM_INCLUDE_EXAMPLES=OFF \
        -DLLVM_INCLUDE_TESTS=OFF \
        -DLLVM_INCLUDE_TOOLS=ON \
        -DLLVM_BUILD_BENCHMARKS=OFF \
        -DLLVM_BUILD_EXAMPLES=OFF \
        -DLLVM_BUILD_TESTS=OFF \
        -DLLVM_BUILD_TOOLS=ON
}
