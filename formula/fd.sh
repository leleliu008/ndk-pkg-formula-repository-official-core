package set summary "Simple, fast and user-friendly alternative to find"
package set src.git "https://github.com/sharkdp/fd.git"
package set src.url "https://github.com/sharkdp/fd/archive/v8.3.0.tar.gz"
package set src.sum "3c5a8a03c4f6ade73b92432ed0ba51591db19b0d136073fa3ccfa99d63403d52"
package set license "Apache-2.0"
package set bsystem "cargo"

# error: undefined reference to 'getgrnam_r'
# https://github.com/sharkdp/fd/issues/642
package set sdk.api 24
