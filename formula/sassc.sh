package set summary "Wrapper around libsass that helps to create command-line apps"
package set git.url "https://github.com/sass/sassc.git"
package set src.url "https://github.com/sass/sassc/archive/refs/tags/3.6.2.tar.gz"
package set src.sum "608dc9002b45a91d11ed59e352469ecc05e4f58fc1259fc9a9f5b8f0f8348a03"
package set license "MIT"
package set dep.pkg "libsass"
package set bsystem "autotools"

build() {
    configure --with-libsass="$libsass_INSTALL_DIR"
}
