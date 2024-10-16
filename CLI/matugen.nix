{inputs, pkgs, config, ...}:
{
  users.users.kosei.packages = with pkgs;[
   inputs.matugen.packages."${system}".default
  ];
}
