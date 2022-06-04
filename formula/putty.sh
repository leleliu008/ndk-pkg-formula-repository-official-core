pkg_set summary "Implementation of Telnet and SSH"
pkg_set webpage "https://www.chiark.greenend.org.uk/~sgtatham/putty/"
pkg_set git.url "https://git.tartarus.org/simon/putty.git"
pkg_set src.url "https://the.earth.li/~sgtatham/putty/0.77/putty-0.77.tar.gz"
pkg_set src.sha "419a76f45238fd45f2c76b42438993056e74fa78374f136052aaa843085beae5"
pkg_set license "MIT"
pkg_set dep.pkg "libglob"
pkg_set bsystem "cmake"

build() {
    # int glob(const char* __pattern, int __flags, int (*__error_callback)(const char* __failure_path, int __failure_errno), glob_t* __result_ptr) __INTRODUCED_IN(28);
    # void globfree(glob_t* __result_ptr) __INTRODUCED_IN(28);
    if [ "$TARGET_OS_VERS" -lt 28 ] ; then
        export LDFLAGS="$LDFLAGS $libglob_INSTALL_DIR/lib/libglob.a"
    fi

    export CFLAGS="$(printf '%s\n' "$CFLAGS" | sed 's|-DNDEBUG||g')"

    cmakew -DPUTTY_GTK_VERSION=NONE
}
