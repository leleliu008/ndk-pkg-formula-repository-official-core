package set summary "Share your terminal as a web application"
package set git.url "https://github.com/sorenisanerd/gotty.git"
package set src.url "https://github.com/sorenisanerd/gotty/archive/refs/tags/v1.3.0.tar.gz"
package set src.sum "09cc4fe278fa866df895527047ce83f009de97c01bab729651adac9db306f273"
package set license "MIT"
package set bsystem "go"

build() {
    run go build -v -trimpath -ldflags="'-s -w'" -o gotty &&
    run install_bins gotty
}
