summary="Extraction utility for .zip compressed archives"
homepage="https://infozip.sourceforge.io/UnZip.html"
url="https://downloads.sourceforge.net/project/infozip/UnZip%206.x%20%28latest%29/UnZip%206.0/unzip60.tar.gz"
sha256="036d96991646d0449ed0aa952e4fbe21b476ce994abc276e49d30e686708bd37"
version="6.0-25"

prepare() {
    # https://packages.debian.org/buster/unzip
    patches \
        "https://mirrors.tuna.tsinghua.edu.cn/debian/pool/main/u/unzip/unzip_$version.debian.tar.xz" \
        "0783e4d11d755cb43904e3f59a60dbb92ee9c6b08ac54d86bc61f9848216f37b"
}

build() {
    return 0
}
