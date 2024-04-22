#!/bin/sh

set -e

case $1 in
    gm4)      printf '%s\n' 'm4'        ;;
    xxd)      printf '%s\n' 'vim'       ;;
    tcl)      printf '%s\n' 'tcl-tk'    ;;
    file)     printf '%s\n' 'file-formula' ;;
    gtar)     printf '%s\n' 'gnu-tar'   ;;
    gmake)    printf '%s\n' 'make'      ;;
    gindent)  printf '%s\n' 'gnu-indent';;
    xattr)    printf '%s\n' 'attr'      ;;
    patch)    printf '%s\n' 'gpatch'    ;;
    delta)    printf '%s\n' 'git-delta' ;;
    proj7)    printf '%s\n' 'proj@7'    ;;
    bsdtar)   printf '%s\n' 'libarchive';;
    blake3)   printf '%s\n' 'b3sum'     ;;
    utfcpp)   printf '%s\n' 'utf8cpp'   ;;
    openpmix) printf '%s\n' 'pmix'      ;;
    xsltproc) printf '%s\n' 'libxslt'   ;;
    msgpack-c)printf '%s\n' 'msgpack'   ;;
    freetype2)printf '%s\n' 'freetype'  ;;
    freetype2-with-harfbuzz)
              printf '%s\n' 'freetype'  ;;
    golang@1.21)
              printf '%s\n' 'go@1.21'   ;;
    golang)   printf '%s\n' 'go'        ;;
    tensorflow-lite)
              printf '%s\n' 'libtensorflow' ;;
    dot_static)
              printf '%s\n' 'graphviz'  ;;
    glib-tools)
              printf '%s\n' 'glib'      ;;
    gettext-tools)
              printf '%s\n' 'gettext'   ;;
    gettext-runtime)
              printf '%s\n' 'gettext'   ;;
    libmediainfo|mediainfo)
              printf '%s\n' 'media-info';;
    libxml2-utils|libxml2-python3)
              printf '%s\n' 'libxml2'   ;;
    libjpeg-turbo)
              printf '%s\n' 'jpeg-turbo';;
    libprotobuf)
              printf '%s\n' 'protobuf'  ;;
    libopenh264)
              printf '%s\n' 'openh264'  ;;
    libsqlite3)
              printf '%s\n' 'sqlite'    ;;
    libmp3lame)
              printf '%s\n' 'lame'      ;;
    libjansson)
              printf '%s\n' 'jansson'   ;;
    libleveldb)
              printf '%s\n' 'leveldb'   ;;
    libtheora)
              printf '%s\n' 'theora'    ;;
    libvorbis)
              printf '%s\n' 'vorbis'    ;;
    libexhale)
              printf '%s\n' 'exhale'    ;;
    libpixman)
              printf '%s\n' 'pixman'    ;;
    libsnappy)
              printf '%s\n' 'snappy'    ;;
    libcrc32c)
              printf '%s\n' 'crc32c'    ;;
    libspeexdsp)
              printf '%s\n' 'speexdsp'  ;;
    libspeex) printf '%s\n' 'speex'     ;;
    librav1e) printf '%s\n' 'rav1e'     ;;
    libdav1d) printf '%s\n' 'dav1d'     ;;
    libexiv2) printf '%s\n' 'exiv2'     ;;
    libx264)  printf '%s\n' 'x264'      ;;
    libx265)  printf '%s\n' 'x265'      ;;
    libopus)  printf '%s\n' 'opus'      ;;
    libxvid)  printf '%s\n' 'xvid'      ;;
    libpcre)  printf '%s\n' 'pcre'      ;;
    libpcre2) printf '%s\n' 'pcre2'     ;;
    libexpat) printf '%s\n' 'expat'     ;;
    libpcre)  printf '%s\n' 'pcre'      ;;
    libcurl)  printf '%s\n' 'curl'      ;;
    libwebp)  printf '%s\n' 'webp'      ;;
    libzstd)  printf '%s\n' 'zstd'      ;;
    liblzma)  printf '%s\n' 'xz'        ;;
    libuuid)  printf '%s\n' 'util-linux';;
    libre2c)  printf '%s\n' 're2c'      ;;
    libcgif)  printf '%s\n' 'cgif'      ;;
    libz3.a)  printf '%s\n' 'z3'        ;;
    libgmp)   printf '%s\n' 'gmp'       ;;
    libnng)   printf '%s\n' 'nng'       ;;
    libbz2)   printf '%s\n' 'bzip2'     ;;
    liblz4)   printf '%s\n' 'lz4'       ;;
    liblzo)   printf '%s\n' 'lzo'       ;;
    libzmq)   printf '%s\n' 'zeromq'    ;;
    libjxl)   printf '%s\n' 'jpeg-xl'   ;;

    png)      printf '%s\n' 'libpng'    ;;
    tiff)     printf '%s\n' 'libtiff'   ;;

    libtwolame|stwolame)
              printf '%s\n' 'two-lame'  ;;

    toml++)   printf '%s\n' 'tomlplusplus'  ;;
    xorg-*)   printf '%s\n' "$1" | cut -c6- ;;
    *)        printf '%s\n' "$1"
esac
