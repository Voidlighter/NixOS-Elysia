{
  description = "NixOS configuration with flakes";
  inputs.nixos-hardware.url = "github:NixOS/nixos-hardware/master";

  outputs = { self, nixpkgs, nixos-hardware }: {
    # replace <your-hostname> with your actual hostname
    nixosConfigurations.elysia = nixpkgs.lib.nixosSystem {
      # ...
      modules = [
        # ...
        # add your model from this list: https://github.com/NixOS/nixos-hardware/blob/master/flake.nix
        # nixos-hardware.nixosModules.microsoft-surface-common
        nixos-hardware.nixosModules.microsoft-surface-pro-intel
        ./configuration.nix
      ];
    };
  };
}
