package set summary "Fly through your shell history"
package set git.url "https://github.com/cantino/mcfly.git"
package set src.url "https://github.com/cantino/mcfly/archive/v0.5.12.tar.gz"
package set src.sum "41bbcbde13c3a27696cb4ac0b9e752a925661747acc4075450e10d4e17b17bde"
package set license "MIT"
package set bsystem "cargo"

build() {
    if [ "$TARGET_OS_ARCH" = "x86_64" ] ; then
        LIBCLANG_RT_BUILTINS_FILEPATH="$("$CC" -print-libgcc-file-name)"
		run "echo 'INPUT($LIBCLANG_RT_BUILTINS_FILEPATH -l:libunwind.a)' > '$WORK_DIR/$TIMESTAMP_UNIX/libgcc.a'"
    fi

    cargow install
}
