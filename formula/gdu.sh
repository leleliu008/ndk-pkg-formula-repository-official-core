package set summary "Disk usage analyzer with console interface written in Go"
package set git.url "https://github.com/dundee/gdu.git"
package set src.url "https://github.com/dundee/gdu/archive/v5.13.0.tar.gz"
package set src.sum "efcbf98b83adc99777f1e135abb61f747dae32b04919fdb884dbc6a57d6ed5f3"
package set license "MIT"
package set bsystem "go"

build() {
    gow -X github.com/dundee/gdu/v5/build.Version=v$PACKAGE_VERSION -X github.com/dundee/gdu/v5/build.Time=$TIMESTAMP_UNIX ./cmd/gdu
}
