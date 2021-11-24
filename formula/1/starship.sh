package set summary "Cross-shell prompt for astronauts"
package set webpage "https://starship.rs"
package set src.git "https://github.com/starship/starship.git"
package set src.url "https://github.com/starship/starship/archive/v1.0.0.tar.gz"
package set src.sum "a66d47758b3dac4f1a626bb175c4847a2ef266540498a9f25222e715baf9f9db"
package set license "ISC"
package set bsystem "cargo"
package set cdefine "index(str,ch)=strchr(str,ch)"

# sys/sysinfo.h: int get_nprocs_conf(void) __INTRODUCED_IN(23);
package set sdk.api 23

build() {
    cargow install -j 1 
}
