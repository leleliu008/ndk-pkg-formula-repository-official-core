summary "CDDB server access library"
webpage "https://libcddb.sourceforge.io"
src_url "https://downloads.sourceforge.net/project/libcddb/libcddb/1.3.2/libcddb-1.3.2.tar.bz2"
src_sum "35ce0ee1741ea38def304ddfe84a958901413aa829698357f0bee5bb8f0a223b"
bsystem "configure"
depends "libiconv"

build() {
    configure \
        --with-libiconv-prefix="$libiconv_INSTALL_DIR" \
        ac_cv_func_malloc_0_nonnull=yes \
        ac_cv_func_realloc_0_nonnull=yes
}
