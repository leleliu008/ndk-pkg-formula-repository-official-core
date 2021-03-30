summary "Cross-shell prompt for astronauts"
webpage "https://starship.rs"
src_git "https://github.com/starship/starship.git"
src_url "https://github.com/starship/starship/archive/v0.50.0.tar.gz"
src_sum "d8f4dc9bd266f2a5c34926d361c62fdddb61cd7da4acadba5f9c175eb07602e5"
license "ISC"
bsystem "cargo"

# sys/sysinfo.h: int get_nprocs_conf(void) __INTRODUCED_IN(23);
sdk_api 23

build() {
    export CFLAGS="$CFLAGS $CPPFLAGS $LDFLAGS"
    run cargo clean &&
    run cargo install --target "$CARGO_TARGET" -vv --path "$SOURCE_DIR" --root="$ABI_INSTALL_DIR" 
}
