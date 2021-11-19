package set summary "Perceptual video quality assessment based on multi-method fusion"
package set src.git "https://github.com/Netflix/vmaf.git"
package set src.url "https://github.com/Netflix/vmaf/archive/v2.3.0.tar.gz"
package set src.sum "d8dcc83f8e9686e6855da4c33d8c373f1735d87294edbd86ed662ba2f2f89277"
package set license "BSD-2-Clause-Patent"
package set dep.cmd "nasm"
package set bsystem "meson"
package set sourced "libvmaf"

build() {
    mesonw \
        -Denable_tests=false \
        -Denable_docs=false \
        -Denable_asm=true
}
