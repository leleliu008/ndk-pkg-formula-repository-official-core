#!/bin/sh

set -e

case $1 in
    gm4)      printf '%s\n' 'm4'        ;;
    xxd)      printf '%s\n' 'vim'       ;;
    tcl)      printf '%s\n' 'tcl-tk'    ;;
    dua)      printf '%s\n' 'dua-cli'   ;;
    file)     printf '%s\n' 'file-formula' ;;
    gtar)     printf '%s\n' 'gnu-tar'   ;;
    gmake)    printf '%s\n' 'make'      ;;
    gindent)  printf '%s\n' 'gnu-indent';;
    xattr)    printf '%s\n' 'attr'      ;;
    patch)    printf '%s\n' 'gpatch'    ;;
    delta)    printf '%s\n' 'git-delta' ;;
    xmlwf)    printf '%s\n' 'expat'     ;;
    typos)    printf '%s\n' 'typos-cli' ;;
    proj7)    printf '%s\n' 'proj@7'    ;;
    bsdtar)   printf '%s\n' 'libarchive';;
    eigen3)   printf '%s\n' 'eigen'     ;;
    utfcpp)   printf '%s\n' 'utf8cpp'   ;;
    openpmix) printf '%s\n' 'pmix'      ;;
    xsltproc) printf '%s\n' 'libxslt'   ;;
    msgpack-c)printf '%s\n' 'msgpack'   ;;
    freetype2-with-harfbuzz)
              printf '%s\n' 'freetype'  ;;
    golang@1.21)
              printf '%s\n' 'go@1.21'   ;;
    golang)   printf '%s\n' 'go'        ;;
    trietool) printf '%s\n' 'libdatrie' ;;
    tensorflow-lite)
              printf '%s\n' 'libtensorflow' ;;
    dot_static)
              printf '%s\n' 'graphviz'  ;;
    grpc-plugins)
              printf '%s\n' 'grpc'      ;;
    glib-tools)
              printf '%s\n' 'glib'      ;;
    gettext-tools)
              printf '%s\n' 'gettext'   ;;
    libtextstyle)
              printf '%s\n' 'gettext'   ;;
    libasprintf)
              printf '%s\n' 'gettext'   ;;
    gettext-dev)
              printf '%s\n' 'gettext'   ;;
    openssl-dev)
              printf '%s\n' 'openssl'   ;;
    libasync++)
              printf '%s\n' 'asyncplusplus' ;;
    libmediainfo|mediainfo)
              printf '%s\n' 'media-info';;
    libxml2-python3|xmlutils)
              printf '%s\n' 'libxml2'   ;;
    libjpeg-turbo)
              printf '%s\n' 'jpeg-turbo';;
    libflatbuffers|flatc)
              printf '%s\n' 'flatbuffers' ;;
    libprotobuf)
              printf '%s\n' 'protobuf'  ;;
    libmimalloc)
              printf '%s\n' 'mimalloc'  ;;
    libfontconfig)
              printf '%s\n' 'fontconfig';;
    libtesseract)
              printf '%s\n' 'tesseract' ;;
    libgraphite2)
              printf '%s\n' 'graphite2' ;;
    libqrencode)
              printf '%s\n' 'qrencode'  ;;
    libgraphene)
              printf '%s\n' 'graphene'  ;;
    libfreetype)
              printf '%s\n' 'freetype'  ;;
    libharfbuzz)
              printf '%s\n' 'harfbuzz'  ;;
    libpugixml)
              printf '%s\n' 'pugixml'   ;;
    libminizip)
              printf '%s\n' 'minizip'   ;;
    libopenh264)
              printf '%s\n' 'openh264'  ;;
    libtinyxml2)
              printf '%s\n' 'tinyxml2'  ;;
    libsqlite3)
              printf '%s\n' 'sqlite'    ;;
    libmp3lame)
              printf '%s\n' 'lame'      ;;
    libwavpack)
              printf '%s\n' 'wavpack'   ;;
    libjansson)
              printf '%s\n' 'jansson'   ;;
    libduktape)
              printf '%s\n' 'duktape'   ;;
    libleveldb)
              printf '%s\n' 'leveldb'   ;;
    libcpuinfo)
              printf '%s\n' 'cpuinfo'   ;;
    libhiredis)
              printf '%s\n' 'hiredis'   ;;
    libtheora)
              printf '%s\n' 'theora'    ;;
    libexhale)
              printf '%s\n' 'exhale'    ;;
    libpixman)
              printf '%s\n' 'pixman'    ;;
    libjasper)
              printf '%s\n' 'jasper'    ;;
    libsnappy)
              printf '%s\n' 'snappy'    ;;
    libcrc32c)
              printf '%s\n' 'crc32c'    ;;
    libblake3)
              printf '%s\n' 'b3sum'     ;;
    libxxhash)
              printf '%s\n' 'xxhash'    ;;
    libxapian)
              printf '%s\n' 'xapian'    ;;
    libnetpbm)
              printf '%s\n' 'netpbm'    ;;
    libspeexdsp)
              printf '%s\n' 'speexdsp'  ;;
    libspeex) printf '%s\n' 'speex'     ;;
    librav1e) printf '%s\n' 'rav1e'     ;;
    libdav1d) printf '%s\n' 'dav1d'     ;;
    libexiv2) printf '%s\n' 'exiv2'     ;;
    libfftw3) printf '%s\n' 'fftw'      ;;
    libeigen) printf '%s\n' 'eigen'     ;;
    libcares) printf '%s\n' 'c-ares'    ;;
    libsrtp)  printf '%s\n' 'srtp'      ;;
    libflac)  printf '%s\n' 'flac'      ;;
    libx264)  printf '%s\n' 'x264'      ;;
    libx265)  printf '%s\n' 'x265'      ;;
    libopus)  printf '%s\n' 'opus'      ;;
    libxvid)  printf '%s\n' 'xvid'      ;;
    libpcre)  printf '%s\n' 'pcre'      ;;
    libpcre2) printf '%s\n' 'pcre2'     ;;
    libexpat) printf '%s\n' 'expat'     ;;
    libmhash) printf '%s\n' 'mhash'     ;;
    liblcms2) printf '%s\n' 'little-cms2' ;;
    libpcre)  printf '%s\n' 'pcre'      ;;
    libcurl)  printf '%s\n' 'curl'      ;;
    liblmdb)  printf '%s\n' 'lmdb'      ;;
    libgdbm)  printf '%s\n' 'gdbm'      ;;
    libwebp)  printf '%s\n' 'webp'      ;;
    libjpeg)  printf '%s\n' 'jpeg'      ;;
    librtmp)  printf '%s\n' 'rtmpdump'  ;;
    libzstd)  printf '%s\n' 'zstd'      ;;
    liblzma)  printf '%s\n' 'xz'        ;;
    libuuid)  printf '%s\n' 'util-linux';;
    libargp)  printf '%s\n' 'argp-standalone';;
    libre2c)  printf '%s\n' 're2c'      ;;
    libcgif)  printf '%s\n' 'cgif'      ;;
    libgif)   printf '%s\n' 'giflib'    ;;
    libzlog)  printf '%s\n' 'zlog'      ;;
    libpopt)  printf '%s\n' 'popt'      ;;
    libmpfr)  printf '%s\n' 'mpfr'      ;;
    libmpir)  printf '%s\n' 'mpir'      ;;
    libgmp)   printf '%s\n' 'gmp'       ;;
    libnng)   printf '%s\n' 'nng'       ;;
    libbz2)   printf '%s\n' 'bzip2'     ;;
    liblz4)   printf '%s\n' 'lz4'       ;;
    liblzo)   printf '%s\n' 'lzo'       ;;
    liblua)   printf '%s\n' 'lua'       ;;
    libzmq)   printf '%s\n' 'zeromq'    ;;
    libjxl)   printf '%s\n' 'jpeg-xl'   ;;
    libcaf)   printf '%s\n' 'caf'       ;;
    libglm)   printf '%s\n' 'glm'       ;;
    libhwy)   printf '%s\n' 'highway'   ;;
    libz3)    printf '%s\n' 'z3'        ;;
    libz)     printf '%s\n' 'zlib'      ;;

    png)      printf '%s\n' 'libpng'    ;;
    tiff)     printf '%s\n' 'libtiff'   ;;
    adig)     printf '%s\n' 'c-ares'    ;;

    libtwolame|stwolame)
              printf '%s\n' 'two-lame'  ;;

    getopt)   printf '%s\n' 'util-linux';;
    toml++)   printf '%s\n' 'tomlplusplus'  ;;
    xorg-*)   printf '%s\n' "$1" | cut -c6- ;;
    *)        printf '%s\n' "$1"
esac
