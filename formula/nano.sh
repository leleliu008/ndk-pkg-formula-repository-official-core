package set summary "Free (GNU) replacement for the Pico text editor"
package set webpage "https://www.nano-editor.org/"
package set src.url "https://www.nano-editor.org/dist/v6/nano-6.0.tar.xz"
package set src.sum "93ac8cb68b4ad10e0aaeb80a2dd15c5bb89eb665a4844f7ad01c67efcb169ea2"
package set license "GPL-3.0-or-later"
package set dep.pkg "gettext file"
package set dep.cmd "pkg-config"
package set bsystem "configure"

build() {
    # pwd.h: struct passwd* getpwent(void) __INTRODUCED_IN(26);
    if [ $TARGET_OS_VERS -lt 26 ] ; then
        export ac_cv_header_pwd_h=no
    fi

    # glob.h: void globfree(glob_t* __result_ptr) __INTRODUCED_IN(28);
    if [ $TARGET_OS_VERS -lt 28 ] ; then
        export ac_cv_header_glob_h=no
    fi

    configure \
        --enable-utf8 \
        --enable-color \
        --enable-extra \
        --enable-nanorc \
        --enable-multibuffer
}
