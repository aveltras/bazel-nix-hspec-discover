let
  pkgs = import ./nixpkgs.nix {};
  
in pkgs.mkShell {
  packages = [
    pkgs.bazel
    pkgs.compiler
    pkgs.openjdk11
  ];
}
