summary "Lightweight and flexible command-line JSON processor"
webpage "https://stedolan.github.io/jq"
src_url "https://github.com/stedolan/jq/releases/download/jq-1.6/jq-1.6.tar.gz"
src_sum "5de8c8e29aaa3fb9cc6b47bb27299f271354ebb72514e3accadc7d38b5bbaa72"
license "MIT"
require "make"
depends "oniguruma"

build() {
    configure --with-oniguruma="$oniguruma_INSTALL_DIR"
}
