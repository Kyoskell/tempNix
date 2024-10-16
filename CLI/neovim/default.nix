{inputs, pkgs, config, ...}:
{
  nixpkgs = {
    overlays = [
      (final: prev: {
        nvchad = inputs.nvchad4nix.packages."${pkgs.system}".nvchad.overrideAttrs(
          prev: {
            nativeBuildInputs = prev.nativeBuildInputs ++ [
            pkgs.nixd
            pkgs.vimPlugins.nvim-treesitter.withAllGrammars
            ];
          }
        );
      })
    ];
  };

  users.users.kosei = {
    packages = with pkgs; [
      nvchad
    ];
  };
}
