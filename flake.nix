{
  description = "A flake for building ";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-25.05";
  };

  outputs = { self, nixpkgs }:
    let
      pkgs = import nixpkgs {system = "x86_64-linux"; };
    in
      {
        packages.x86_64-linux.default = pkgs.callPackage ./violetland.nix { };
      };
}
