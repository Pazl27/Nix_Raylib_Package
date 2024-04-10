{
  stdenv,
  raylib,
  cmake,
  ...
}:
stdenv.mkDerivation {
  pname = "myRaylib";
  version = "v1.0";

  src = ./.;  

  buildInputs = [ 
    cmake
    raylib
  ];

  configurePhase = ''
    cmake -B .
  '';

  buildPhase = ''
    make
  '';

  installPhase = ''
    mkdir -p $out/bin
    mv main $out/bin/myRaylib
  '';
}




