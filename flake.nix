{
  description = "Nixpkgs overlay for Mobile Verification Toolkit (MVT)";
  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
  inputs.utils.url = "github:numtide/flake-utils";

  outputs = {
    self,
    nixpkgs,
    utils,
  }:
    utils.lib.eachDefaultSystem (system: let
      overlay = import ./overlay.nix;
      pkgs = import nixpkgs {
        inherit system;
        overlays = [
          overlay
        ];
      };
    in {
      inherit overlay;

      apps.mvt-android = utils.lib.mkApp {
        drv = self.packages.${system}.mvt;
        exePath = "/bin/mvt-android";
      };
      apps.mvt-ios = utils.lib.mkApp {
        drv = self.packages.${system}.mvt;
        exePath = "/bin/mvt-ios";
      };

      formatter = pkgs.alejandra;

      packages = rec {
        default = mvt;
        NSKeyedUnArchiver = pkgs.python3Packages.NSKeyedUnArchiver;
        iOSbackup = pkgs.python3Packages.iOSbackup;
        mvt = pkgs.mvt;
      };
    });
}
