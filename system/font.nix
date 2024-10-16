{config, lib, pkgs, ...}:
{
  fonts = {
    packages = with pkgs; [
      fira-code
      fira-code-symbols
      font-awesome
      (nerdfonts.override {fonts=["JetBrainsMono"];})
    ];
    fontDir.enable = true;
    fontconfig = {
      defaultFonts.monospace = ["JetBrainsMono Nerd Font"];
    };
  };
}
