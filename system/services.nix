{config, pkgs, lib, ...}:
{
  services.pipewire = {
     enable = true;
     pulse.enable = true;
  };
  
  services.upower.enable = true;

}
