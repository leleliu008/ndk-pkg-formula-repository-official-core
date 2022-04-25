pkg_set summary "a tool for displaying a random quotation"
pkg_set git.url "https://github.com/shlomif/fortune-mod.git"
pkg_set src.url "https://github.com/shlomif/fortune-mod/releases/download/fortune-mod-3.12.0/fortune-mod-3.12.0.tar.xz"
pkg_set src.sha "7d5aed7cb9998950d349eba83a5b57fefba71928b34b0f998508419fdb740b71"
pkg_set license ";COPYING.txt;https://raw.githubusercontent.com/shlomif/fortune-mod/master/LICENSE"
pkg_set dep.plm "App::Cpan Path::Tiny App::Docmake"
pkg_set bsystem "cmake"

if [ "$GITHUB_ACTIONS" = true ] ; then
    pkg_set dep.cmd "perl>=5.34 pkg-config xsltproc"
else
    pkg_set dep.cmd "perl pkg-config xsltproc"
fi


build0() {
    if command -v brew > /dev/null ; then
        [ -d "$(brew --prefix docbook-xsl)" ] || run brew install docbook-xsl || return 1
        # http://www.xmlsoft.org/xmlcatalog_man.html
        # https://github.com/Homebrew/homebrew-core/blob/HEAD/Formula/docbook-xsl.rb
        export XML_CATALOG_FILES="$(brew --prefix)/etc/xml/catalog"
        echo "XML_CATALOG_FILES=$XML_CATALOG_FILES"
    else
        for pm in $(__pmw_get_available_pm_list)
        do
            __pmw_install_the_given_package "$pm" docbook-xsl && break
        done
    fi

    cmakew
}

build() {
    build0
}
