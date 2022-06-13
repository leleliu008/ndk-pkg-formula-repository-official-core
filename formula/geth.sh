pkg_set summary "Go implementation of the Ethereum protocol"
pkg_set webpage "https://geth.ethereum.org/"
pkg_set git.url "https://github.com/ethereum/go-ethereum.git"
pkg_set src.url "https://github.com/ethereum/go-ethereum/archive/refs/tags/v1.10.18.tar.gz"
pkg_set src.sha "de358812c89e64b6b64f9dc6bd95a830902e3161959038e9d76be506f57ecef5"
pkg_set license "LGPL-3.0-or-later|COPYING|https://raw.githubusercontent.com/ethereum/go-ethereum/master/COPYING"
pkg_set bsystem "go"

build() {
    for item in geth abigen bootnode ethkey evm rlpdump puppeth
    do
        gow ./cmd/$item || return 1
    done
}
