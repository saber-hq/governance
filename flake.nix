{
  description = "Saber Governance.";

  inputs.flake-utils.url = "github:numtide/flake-utils";

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs { inherit system; };
      in
      rec {
        defaultPackage = with pkgs; mkShell {
          buildInputs = [
            coreutils
            bash
            tree
            yj
            python39Packages.jsonschema
          ];
        };
        devShell = defaultPackage;
      }
    );

}
