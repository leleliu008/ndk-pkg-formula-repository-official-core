package set summary "Reference implementation of the Linux FUSE interface"
package set webpage "https://github.com/libfuse/libfuse.git"
package set src.url "https://github.com/libfuse/libfuse/releases/download/fuse-3.10.4/fuse-3.10.4.tar.xz"
package set src.sum "9365b74fd8471caecdb3cc5adf25a821f70a931317ee9103d15bd39089e3590d"
package set licence "LGPL-2.1-only"
package set bsystem "meson"


prepare() {
    sed_in_place "/'rt'/d" lib/meson.build
}

build() {
    mesonw -Duseroot=false -Dtests=false
}
