{
  description = "Saber Governance.";

  inputs.flake-utils.url = "github:numtide/flake-utils";

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs { inherit system; };
      in
      {
        defaultPackage = with pkgs; buildEnv {
          name = "saber-governance";
          paths = [
            coreutils
            bash
            yj
            python39Packages.jsonschema
          ];
        };
      }
    );

}
