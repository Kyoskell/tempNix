{config, pkgs, ...}:
{
  programs.river = {
    enable = true;
    xwayland.enable = true;
    extraPackages = with pkgs; [
      foot
    ];
  };
}
