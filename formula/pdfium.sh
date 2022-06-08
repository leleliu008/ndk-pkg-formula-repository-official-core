pkg_set summary "PDF read/write library by Google."
pkg_set webpage "https://pdfium.googlesource.com/pdfium/"
pkg_set git.url "https://pdfium.googlesource.com/pdfium.git"
pkg_set src.url "dir:///dev/null"
pkg_set version "1"
pkg_set license "BSD-3-Clause"
pkg_set dep.cmd "git ninja"

prepare() {
    run cd ..
    run git clone https://chromium.googlesource.com/chromium/tools/depot_tools.git
    run export PATH="'$PWD/depot_tools:$PATH'"

    run gclient config --unmanaged https://pdfium.googlesource.com/pdfium.git
    run "echo \"target_os = ['android']\" >> .gclient"
    run "yes | gclient sync"

    run cd pdfium

    sed_in_place '/PNG_USE_READ_MACROS/a "FPDFSDK_EXPORTS",' BUILD.gn

    GN="$(find "$PWD/buildtools" -name gn)"

    if [ -z "$GN" ] ; then
        die "gn command not found."
    fi

    PACKAGE_SRC_TOP_DIR="$PWD"
    PACKAGE_BSCRIPT_DIR="$PWD"
}

build() {
    case $TARGET_OS_ABI in
        armeabi-v7a) GN_ARG_TARGET_CPU=arm   ;;
        arm64-v8a)   GN_ARG_TARGET_CPU=arm64 ;;
        x86)         GN_ARG_TARGET_CPU=x86   ;;
        x86_64)      GN_ARG_TARGET_CPU=x64   ;;
    esac

    run $GN gen . --root="$PACKAGE_BSCRIPT_DIR"

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

    run install_bins pdfium_diff
    run install_libs *.so
    run install_incs $PACKAGE_BSCRIPT_DIR/public/*.h
    run install_incs $PACKAGE_BSCRIPT_DIR/public/cpp/*.h:cpp
}
