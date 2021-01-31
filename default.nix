{ pkgs ? import <nixpkgs> {}}:


with pkgs;
stdenv.mkDerivation rec {
# libdash = stdenv.mkDerivation rec {
#   name = "libdash";
#   version = "bee495effc624aa11b7ef8b52956d8c4b5012686";

#     src = fetchFromGitHub {
#       owner = "mgree";
#       repo = name;
#       rev = version;
#       sha256 = "0alzmk97rxg7s6irs9lvf89dy9n3r769my5n4j9p9qyigcdgjaia";
#     };


#     buildInputs = [
#     ocamlPackages.ctypes
#     ocamlPackages.findlib
#     ocamlPackages.opam-core
#     autoconf
#     automake
#     intltool
#     libtool
#     pkg-config
#     ];

#     preConfigure = ''
#     pwd
#     ls
#     cat README.md
#     '';
#     meta = with lib; {
#     homepage = "https://github.com/mgree/libdash";
#       description = "Syntax for cross-language type definitions";
#       license = licenses.bsd3;
#       maintainers = with maintainers; [ aij jwilberding ];
#     };
#   };

  pname = "pash";
  version = "c04fc32da68cd1281e4a8d0abb9e2ba89ee3af71";

  src = fetchFromGitHub {
    owner = "andromeda";
    repo = "pash";
    rev = version;
    sha256 = "1s4nlffp683binbdxwwzbsci61kbjylbcr1jf44sv1h1r5d5js05";
  };

# nativeBuildInputs = [];
  buildInputs = [
  libffi
  ocaml
  ocamlPackages.opam-core
  ocamlPackages.ctypes
  ocamlPackages.atdgen
  ocamlPackages.dum
  ocamlPackages.findlib
  # ocamlPackages.dash
  python38Packages.pyaml
  python38Packages.jsonpickle
  libtool
  autoconf
  m4
  automake
  python38Packages.pip
  ];


  #
  # doCheck = true;

  meta = with lib; {
  description = "Pash";
    longDescription = ''
    This still doesn't work because libdash is not packaged in nix,
    and I still haven't succeeded building it.
    '';
    homepage = "https://www.github.com/andromeda/pash";
    license = licenses.gpl3Plus;
    maintainers = [ maintainers.eelco ];
    platforms = platforms.all;
  };
}
