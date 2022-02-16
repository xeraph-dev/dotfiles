with import <nixpkgs> { };
mkShell rec {
  LD_LIBRARY_PATH = "/data/lib:" + lib.makeLibraryPath ([
    stdenv.cc.cc.lib
    libGL
    zlib
    glib
    glibc
    nss
    nspr
    expat
    freetype
    libffi
    systemd
    libpulseaudio
    libdrm
    wayland
    libxkbcommon
  ] ++ (with xorg; [
    libX11
    libXrandr
    libXcomposite
    libXcursor
    libXdamage
    libXfixes
    libXi
    libXtst
    libxcb
    libXext
    libXrender
    libXinerama
    libXxf86vm
  ]));
}
