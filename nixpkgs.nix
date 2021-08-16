let
  githubTarball = owner: repo: rev:
    builtins.fetchTarball { url = "https://github.com/${owner}/${repo}/archive/${rev}.tar.gz"; };

  nixpkgsSrc = githubTarball "NixOS" "nixpkgs" "e85975942742a3728226ac22a3415f2355bfc897";

  localOverlays = [

    # make ghc8104 the default package set for haskell
    (self: super: {
      haskellPackages = super.haskell.packages.ghc8104.override {
        overrides = self: super: {};
      };
    })
    
    # override ghc adding all project dependencies as toolchain packages
    (self: super: {
      compiler = super.haskellPackages.ghcWithPackages (p: with p; [
        hspec
      ]);
    })

  ];

in args@{ overlays ? [], ... }:
    import nixpkgsSrc (args // {
      overlays = localOverlays ++ overlays;
    })
