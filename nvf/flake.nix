{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    nvf.url = "github:notashelf/nvf";
  };

  outputs = {
    nixpkgs,
    nvf,
    self,
    ...
  }: {
    # This will make the package available as a flake output under 'packages'
    packages.x86_64-linux.default =
      (nvf.lib.neovimConfiguration {
        pkgs = nixpkgs.legacyPackages.x86_64-linux;
        modules = [
          # Or move this to a separate file and add it's path here instead
          # IE: ./nvf_module.nix
          ./nvf_module.nix
        ];
      })
      .neovim;

    # Example nixosConfiguration using the configured Neovim package
    nixosConfigurations = {
      yourHostName = nixpkgs.lib.nixosSystem {
        # ...
        modules = [
          # This will make wrapped neovim available in your system packages
          # Can also move this to another config file if you pass inputs/self around with specialArgs
          ({pkgs, ...}: {
            environment.systemPackages = [self.packages.${pkgs.stdenv.system}.neovim];
          })
        ];
        # ...
      };
    };
  };
}
