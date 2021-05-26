package set summary "Utilities for the ext2, ext3, and ext4 file systems"
package set webpage "https://e2fsprogs.sourceforge.io/"
package set src.git "https://git.kernel.org/pub/scm/fs/ext2/e2fsprogs.git"
package set src.url "https://downloads.sourceforge.net/project/e2fsprogs/e2fsprogs/v1.45.6/e2fsprogs-1.45.6.tar.gz"
package set src.sum "5f64ac50a2b60b8e67c5b382bb137dec39344017103caffc3a61554424f2d693"
package set license "GPL-2.0"
package set dep.cmd "pkg-config"
package set dep.pkg "gettext libiconv"

# mntent.h: char* hasmntopt(const struct mntent* __entry, const char* __option) __INTRODUCED_IN(26);

build() {
    configure \
        --with-libiconv-prefix="$libiconv_INSTALL_DIR" \
        --with-libintl-prefix="$gettext_INSTALL_DIR"
}
