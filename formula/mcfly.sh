package set summary "Fly through your shell history"
package set git.url "https://github.com/cantino/mcfly.git"
package set src.url "https://github.com/cantino/mcfly/archive/v0.5.13.tar.gz"
package set src.sum "b4dc5fab1ef1fe05fc34b620f1dea6617b48d6d0e3aadcf29a4c9e4cb0894983"
package set license "MIT"
package set bsystem "cargo"

build() {
    if [ "$TARGET_OS_ARCH" = "x86_64" ] ; then
        LIBCLANG_RT_BUILTINS_FILEPATH="$("$CC" -print-libgcc-file-name)"
		run "echo 'INPUT($LIBCLANG_RT_BUILTINS_FILEPATH -l:libunwind.a)' > '$WORK_DIR/$TIMESTAMP_UNIX/libgcc.a'"
    fi

    cargow install
}
