with import <nixpkgs> {};

pkgs.mkShell {
  buildInputs = with pkgs; [
      python39Packages.flake8
      python39Packages.pytest
      black
  ];
}
