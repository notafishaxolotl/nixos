{
  
  description = "the one to start 'em all";

  inputs = {
    nixpkgs.url = "nixpkgs/nixos-25.05";
    home-manager.url = "github:nix-community/home-manager/release-25.05";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
    nixpkgs-unstable.url = "nixpkgs/nixos-unstable";
    spicetify-nix.url = "github:Gerg-L/spicetify-nix";
  };

  outputs = { self, nixpkgs, home-manager, nixpkgs-unstable, ... }:
    let
      lib = nixpkgs.lib;
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
    in{
    nixosConfigurations = {
      Nix = lib.nixosSystem {
        inherit system; 
	modules = [ 
	  ./nixos/configuration.nix
	];
	specialArgs = {
          pkgs-unstable = nixpkgs-unstable.legacyPackages.${pkgs.system};
        };
      };
    };

    homeConfigurations = {
      acito = home-manager.lib.homeManagerConfiguration {
        inherit pkgs; 
        modules = [./home.nix ];
      };
    };

  };

}
