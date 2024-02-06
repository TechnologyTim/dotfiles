{
  description = "Home Manager configuration of tim";

  inputs = {
    # Specify the source of Home Manager and Nixpkgs.
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { nixpkgs, home-manager, ... }:
    let
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
    in {
	  nixosConfigurations = {
		nixos = nixpkgs.lib.nixosSystem {
		  system = "x86_64-linux";
	  	  modules = [./configuration.nix];
		};
	  };

      homeConfigurations."tim" = home-manager.lib.homeManagerConfiguration {
        inherit pkgs;

        modules = [ ./home.nix ];

      };
    };
}
