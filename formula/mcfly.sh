package set summary "Fly through your shell history"
package set git.url "https://github.com/cantino/mcfly.git"
package set src.url "https://github.com/cantino/mcfly/archive/v0.6.0.tar.gz"
package set src.sum "dd846f7ff7109921febc8aecdfd769a1258488a0d72b4a0cfcfa3eaac118b1bc"
package set license "MIT"
package set bsystem "cargo"

build() {
    if [ "$TARGET_OS_ARCH" = "x86_64" ] ; then
        LIBCLANG_RT_BUILTINS_FILEPATH="$("$CC" -print-libgcc-file-name)"
		run "echo 'INPUT($LIBCLANG_RT_BUILTINS_FILEPATH -l:libunwind.a)' > '$TARGET_WORKING_DIR/lib/libgcc.a'"
    fi

    cargow install
}
