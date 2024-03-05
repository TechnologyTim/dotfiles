{
  description = "Home Manager configuration of Tim";

  inputs = {
    # Specify the source of Home Manager and Nixpkgs.
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, home-manager, ... }:
    let
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
    in {
      homeConfigurations."timwa" = home-manager.lib.homeManagerConfiguration {
        pkgs = import nixpkgs {
    		inherit system;
    		config.allowUnfree = true;
  	};

        modules = [ ./home.nix ];
      };

	  nixosConfigurations = {
		night-hammer = nixpkgs.lib.nixosSystem {
		  system = "x86_64-linux";
		  modules = [ ./configuration.nix ];
		};
	  };
	
    };
}
