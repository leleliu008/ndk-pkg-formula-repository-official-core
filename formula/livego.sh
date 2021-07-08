package set summary "live video streaming server in golang"
package set src.git "https://github.com/gwuhaolin/livego.git"
package set src.url "https://github.com/gwuhaolin/livego/archive/refs/tags/0.0.15.tar.gz"
package set src.sum "f1beb250dbbcfb578c32e37f862379aacf804570a8ce602b1a7a9f4d53d1304d"
package set bsystem "go"

build() {
    run go build -v -trimpath -o livego &&
    run install_bins livego
}
