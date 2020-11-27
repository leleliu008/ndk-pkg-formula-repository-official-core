summary  "Perl compatible regular expressions library with a new API"
homepage "https://www.pcre.org"
url      "https://ftp.pcre.org/pub/pcre/pcre2-10.35.tar.bz2"
sha256   "9ccba8e02b0ce78046cdfb52e5c177f0f445e421059e43becca4359c669d4613"

build() {
    configure \
        --disable-valgrind \
        --disable-coverage \
        --enable-unicode \
        --enable-pcre2-8 \
        --enable-pcre2-16 \
        --enable-pcre2-32
}
