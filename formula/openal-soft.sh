package set summary "Implementation of the OpenAL 3D audio API"
package set webpage "https://openal-soft.org/"
package set git.url "https://github.com/kcat/openal-soft.git"
package set src.url "https://openal-soft.org/openal-releases/openal-soft-1.21.1.tar.bz2"
package set src.sum "c8ad767e9a3230df66756a21cc8ebf218a9d47288f2514014832204e666af5d8"
package set license "LGPL-2.0-or-later"
package set bsystem "cmake"

build() {
    cmakew \
        -DALSOFT_UTILS=ON \
        -DALSOFT_EXAMPLES=OFF \
        -DALSOFT_BACKEND_PORTAUDIO=OFF \
        -DALSOFT_BACKEND_PULSEAUDIO=OFF \
        -DALSOFT_MIDI_FLUIDSYNTH=OFF
}
