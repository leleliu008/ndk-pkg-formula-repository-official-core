package set summary "a lightweight and portable command-line YAML processor"
package set webpage "https://mikefarah.gitbook.io/yq"
package set src.git "https://github.com/mikefarah/yq.git"
package set src.url "https://github.com/mikefarah/yq/archive/v4.14.1.tar.gz"
package set src.sum "294300a8c182c3f8e1f537ad2feebb6d0651f61330f33504bdc502f48992bf84"
package set license "MIT"
package set bsystem "go"

build() {
    run go build -trimpath -v -tags release -ldflags "'-s -w'" -o yq &&
    run install_bins yq
}
