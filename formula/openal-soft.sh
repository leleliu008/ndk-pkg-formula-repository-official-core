pkg_set summary "Implementation of the OpenAL 3D audio API"
pkg_set webpage "https://openal-soft.org/"
pkg_set git.url "https://github.com/kcat/openal-soft.git"
pkg_set src.url "https://openal-soft.org/openal-releases/openal-soft-1.22.1.tar.bz2"
pkg_set src.sha "f7f98538d882b513812ae315770a5c88f6ee593e1cccd08648dd1bebbc5c98af"
pkg_set license "LGPL-2.0-or-later|COPYING|https://raw.githubusercontent.com/kcat/openal-soft/master/COPYING"
pkg_set bsystem "cmake"

build() {
    cmakew \
        -DALSOFT_UTILS=ON \
        -DALSOFT_EXAMPLES=OFF \
        -DALSOFT_BACKEND_PORTAUDIO=OFF \
        -DALSOFT_BACKEND_PULSEAUDIO=OFF \
        -DALSOFT_MIDI_FLUIDSYNTH=OFF
}
