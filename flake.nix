{
  description = "A very basic flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    nvchad4nix = {
      url = "github:nix-community/nix4nvchad";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    ags.url = "github:ozwaldorf/ags";
    matugen.url = "github:InioX/Matugen";
  };

  outputs = { self, nixpkgs, ... }@inputs: 
    let 
      system = "x86_64-linux";
      lib = nixpkgs.lib;
      pkgs = nixpkgs.legacyPackages.${system};
      specialArgs = { inherit inputs; };
    in
    {
      nixosConfigurations = {
        nixos = lib.nixosSystem {
	        inherit system;
          inherit specialArgs;
	        modules = [ 
          ./configuration.nix 
          ];
	      };
      };
    };
}

