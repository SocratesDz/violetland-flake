{
  description = "A flake for building ";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-25.05";
  };

  outputs = { self, nixpkgs }: {

    packages.x86_64-linux.hello = nixpkgs.legacyPackages.x86_64-linux.hello;

    packages.x86_64-linux.default = self.packages.x86_64-linux.hello;

    defaultPackage.x86_64-linux =
      with import nixpkgs { system = "x86_64-linux"; };
      callPackage ./violetland.nix { };
  };
}
