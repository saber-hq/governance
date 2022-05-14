{
  description = "Saber Governance.";

  inputs.flake-utils.url = "github:numtide/flake-utils";

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs { inherit system; };
      in
      {
        defaultPackage = with pkgs; mkShell {
          buildInputs = [
            coreutils
            bash
            yj
          ];
        };
      }
    );

}
