{ config, pkgs, ... }:
{
  networking.hostName = "loony-tools-agent";

  imports =
    [ ../modules/agent-hardware.nix
      ../modules/agent-system.nix
      ../modules/basics.nix
      ../modules/iohk-binary-cache.nix
    #  ../modules/hercules-ci.nix
      ../modules/users.nix
      ../modules/web-services.nix
    ];
}