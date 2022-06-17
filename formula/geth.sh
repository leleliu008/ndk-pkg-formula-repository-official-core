pkg_set summary "Go implementation of the Ethereum protocol"
pkg_set webpage "https://geth.ethereum.org/"
pkg_set git.url "https://github.com/ethereum/go-ethereum.git"
pkg_set src.url "https://github.com/ethereum/go-ethereum/archive/refs/tags/v1.10.19.tar.gz"
pkg_set src.sha "4aefb4a26d2146c315955f714ed0d14bb0358c95ff6bad99845678263555c7ee"
pkg_set license "LGPL-3.0-or-later|COPYING|https://raw.githubusercontent.com/ethereum/go-ethereum/master/COPYING"
pkg_set bsystem "go"

build() {
    for item in geth abigen bootnode ethkey evm rlpdump puppeth
    do
        gow ./cmd/$item || return 1
    done
}
