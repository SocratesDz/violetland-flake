{
  stdenv,
  fetchFromGitHub,
  SDL,
  SDL_ttf,
  SDL_mixer,
  SDL_image,
  boost177,
  cmake,
  libGL,
  gettext,
  libGLU
}:

stdenv.mkDerivation {
  pname = "violetland";
  version = "0.5";

  src = fetchFromGitHub {
    owner = "ooxi";
    repo = "violetland";
    rev = "8ddf2539457b1eb17b932eb665920384d02c6ad3";
    sha256 = "sha256-7+rTayvQexdc0s6ICaUVjCLXq44HqB29Jlar7M89tQo=";
    fetchSubmodules = true;
  };

  nativeBuildInputs = [ cmake gettext ];
  
  buildInputs = [
    SDL
    SDL_ttf
    SDL_mixer
    SDL_image
    boost177
    libGL
    libGLU
  ];
}
