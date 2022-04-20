if [ "$GITHUB_ACTIONS" = true ] ; then
    package set dep.cmd "perl>=5.34"
else
    package set dep.cmd "perl"
fi

package set summary "a tool for displaying a random quotation"
package set git.url "https://github.com/shlomif/fortune-mod.git"
package set src.url "https://github.com/shlomif/fortune-mod/releases/download/fortune-mod-3.12.0/fortune-mod-3.12.0.tar.xz"
package set src.sum "7d5aed7cb9998950d349eba83a5b57fefba71928b34b0f998508419fdb740b71"
package set license ";LICENSE;https://raw.githubusercontent.com/shlomif/fortune-mod/master/LICENSE"
package add dep.cmd "pkg-config xsltproc"
package set dep.plm "App::Cpan Path::Tiny App::Docmake"
package set bsystem "cmake"

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
