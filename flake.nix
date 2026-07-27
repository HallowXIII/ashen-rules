{
  description = "Ashen RPG rulebook — Typst sources and character-sheet tooling";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";

  outputs = { self, nixpkgs }:
    let
      systems = [ "x86_64-linux" "aarch64-linux" "x86_64-darwin" "aarch64-darwin" ];
      forAllSystems = f: nixpkgs.lib.genAttrs systems (system: f nixpkgs.legacyPackages.${system});
      pythonEnv = pkgs: pkgs.python3.withPackages (ps: [ ps.pypdf ]);
    in
    {
      # nix develop — everything the build scripts and tools need:
      # typst (rulebook), python + pypdf (fillable character sheet),
      # poppler-utils (pdftotext/pdftoppm for inspecting output).
      devShells = forAllSystems (pkgs: {
        default = pkgs.mkShell {
          packages = [
            pkgs.typst
            (pythonEnv pkgs)
            pkgs.poppler-utils
          ];
        };
      });

      packages = forAllSystems (pkgs: rec {
        # nix build .#character-sheet-fillable → the form-fillable sheet.
        # This is a pure build: the sheet's typst chain uses only bundled
        # fonts and no network packages. The full rulebook is NOT a flake
        # package because the race chapters import @preview packages that
        # typst fetches at compile time; build it with ./build-rulebook.sh
        # (or inside `nix develop`).
        character-sheet-fillable = pkgs.stdenvNoCC.mkDerivation {
          pname = "ashen-character-sheet-fillable";
          version = "unstable";
          src = self;
          nativeBuildInputs = [ pkgs.typst (pythonEnv pkgs) ];
          buildPhase = ''
            runHook preBuild
            python3 tools/make_fillable_sheet.py -o "$out"
            runHook postBuild
          '';
          dontInstall = true;
        };
        default = character-sheet-fillable;
      });
    };
}
