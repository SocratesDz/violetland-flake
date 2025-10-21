{
  description = "A flake for building ";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-25.05";
    utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, utils }: utils.lib.eachDefaultSystem (system:
    let
      pkgs = nixpkgs.legacyPackages.${system};
    in
      {
        packages = rec {
          violetland = pkgs.callPackage ./violetland.nix { };
          default = violetland;
        };
      }
  );
}
