package set summary "C library to read whole-slide images (a.k.a. virtual slides)"
package set webpage "https://openslide.org/"
package set git.url "https://github.com/openslide/openslide.git"
package set src.url "https://github.com/openslide/openslide/releases/download/v3.4.1/openslide-3.4.1.tar.xz"
package set src.sum "9938034dba7f48fadc90a2cdf8cfe94c5613b04098d1348a5ff19da95b990564"
package set license "LGPL-2.1-only"
package set dep.pkg "cairo openjpeg sqlite gdk-pixbuf"
package set dep.cmd "pkg-config"
package set bsystem "configure"

prepare() {
    rm -rf "$WORK_DIR/$TIMESTAMP_UNIX/include.h" &&
    touch  "$WORK_DIR/$TIMESTAMP_UNIX/include.h"
}
