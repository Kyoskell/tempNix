{inputs, pkgs, config, ...}:
{
  users.users.kosei = {
    packages = [
      (inputs.ags.packages."${pkgs.system}".default.override {
          extraPackages = with pkgs; [
            gtksourceview
            webkitgtk
            accountsservice
          ];
       })
    ];
  };
}
