package set summary "Go implementation of the Ethereum protocol"
package set webpage "https://geth.ethereum.org/"
package set git.url "https://github.com/ethereum/go-ethereum.git"
package set src.url "https://github.com/ethereum/go-ethereum/archive/refs/tags/v1.10.16.tar.gz"
package set src.sum "cddc107df2b09fc6ece3d2de7feb82613ef13cafce87ef9c1c6922640194a068"
package set license "LGPL-3.0"
package set bsystem "go"

build() {
    for item in geth abigen bootnode ethkey evm rlpdump puppeth
    do
        gow ./cmd/$item || return 1
    done
}
