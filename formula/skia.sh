pkg_set summary "an open source 2D graphics library."
pkg_set webpage "https://skia.googlesource.com/skia/"
pkg_set git.url "https://skia.googlesource.com/skia.git"
pkg_set src.url "dir:///dev/null"
pkg_set version "1"
pkg_set license "BSD-3-Clause"
pkg_set dep.cmd "git ninja"

prepare() {
    run cd ..
    run git clone https://chromium.googlesource.com/chromium/tools/depot_tools
    run export PATH="'$PWD/depot_tools:$PATH'"

    run gclient config --unmanaged https://skia.googlesource.com/skia.git
    run "echo \"target_os = ['android']\" >> .gclient"
    run "yes | gclient sync"

    run cd skia

    GN="$(find "$PWD/buildtools" -name gn)"

    if [ -z "$GN" ] ; then
        die "gn command not found."
    fi

    PACKAGE_INSTALLING_SRC_DIR="$PWD"
    PACKAGE_INSTALLING_BST_DIR="$PWD"
}

build() {
    case $TARGET_OS_ABI in
        armeabi-v7a) GN_ARG_TARGET_CPU=arm   ;;
        arm64-v8a)   GN_ARG_TARGET_CPU=arm64 ;;
        x86)         GN_ARG_TARGET_CPU=x86   ;;
        x86_64)      GN_ARG_TARGET_CPU=x64   ;;
    esac

    run $GN gen . --root="$PACKAGE_INSTALLING_BST_DIR"

    cat >> args.gn <<EOF
is_debug=false
is_component_build=true
symbol_level=1
pdf_is_standalone=true
pdf_enable_xfa=false
pdf_enable_v8=false
pdf_use_skia_paths=false
pdf_use_skia=false
target_os="android"
target_cpu="$GN_ARG_TARGET_CPU"
EOF

    if [ "$TARGET_OS_ABI" = 'armeabi-v7a' ] ; then
        printf '%s\n' 'arm_version=7' >> args.gn
    fi

    run cat args.gn

    run ninja

    run install_bins skia_diff
    run install_libs *.so
    run install_incs $PACKAGE_INSTALLING_BST_DIR/public/*.h
    run install_incs $PACKAGE_INSTALLING_BST_DIR/public/cpp/*.h:cpp
}
