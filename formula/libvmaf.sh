package set summary "Perceptual video quality assessment based on multi-method fusion"
package set git.url "https://github.com/Netflix/vmaf.git"
package set src.url "https://github.com/Netflix/vmaf/archive/v2.3.1.tar.gz"
package set src.sum "8d60b1ddab043ada25ff11ced821da6e0c37fd7730dd81c24f1fc12be7293ef2"
package set license "BSD-2-Clause-Patent"
package set dep.cmd "nasm"
package set bsystem "meson"
package set bscript "libvmaf"

build() {
    mesonw \
        -Denable_tests=false \
        -Denable_docs=false \
        -Denable_asm=true
}
