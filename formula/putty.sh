pkg_set summary "Implementation of Telnet and SSH"
pkg_set webpage "https://www.chiark.greenend.org.uk/~sgtatham/putty/"
pkg_set git.url "https://git.tartarus.org/simon/putty.git"
pkg_set src.url "https://the.earth.li/~sgtatham/putty/0.76/putty-0.76.tar.gz"
pkg_set src.sha "547cd97a8daa87ef71037fab0773bceb54a8abccb2f825a49ef8eba5e045713f"
pkg_set license "MIT"
pkg_set bsystem "configure"

build() {
    # int glob(const char* __pattern, int __flags, int (*__error_callback)(const char* __failure_path, int __failure_errno), glob_t* __result_ptr) __INTRODUCED_IN(28);
    # void globfree(glob_t* __result_ptr) __INTRODUCED_IN(28);
    if [ "$TARGET_OS_VERS" -lt 28 ] ; then
        ac_cv_header_glob_h=no
    else
        ac_cv_header_glob_h=yes
    fi
    configure \
        --disable-gtktest \
        --without-gtk \
        ac_cv_header_glob_h="$ac_cv_header_glob_h"
}
