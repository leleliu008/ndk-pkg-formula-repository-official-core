pkg_set summary "Fly through your shell history"
pkg_set git.url "https://github.com/cantino/mcfly.git"
pkg_set src.url "https://github.com/cantino/mcfly/archive/v0.6.0.tar.gz"
pkg_set src.sha "dd846f7ff7109921febc8aecdfd769a1258488a0d72b4a0cfcfa3eaac118b1bc"
pkg_set license "MIT"
pkg_set bsystem "cargo"

build() {
    if [ "$TARGET_OS_ARCH" = "x86_64" ] ; then
        LIBCLANG_RT_BUILTINS_FILEPATH="$("$CC" -print-libgcc-file-name)"
		run "echo 'INPUT($LIBCLANG_RT_BUILTINS_FILEPATH -l:libunwind.a)' > '$TARGET_WORKING_DIR/lib/libgcc.a'"
    fi

    cargow install
}
