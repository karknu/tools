# Do not modify this file!  It was generated by ‘nixos-generate-config’
# and may be overwritten by future invocations.  Please make changes
# to /etc/nixos/configuration.nix instead.
{ config, lib, pkgs, ... }:

{
  imports =
    [ # <nixpkgs/nixos/modules/installer/scan/not-detected.nix>
    ];

  # ensure we build for x86_64-linux. This is important
  # to prevent nixops to try tand build this configuration
  # for `currentSystem`, which is x86_64-dsarwin on macOS>
  nixpkgs.localSystem.system = "x86_64-linux";

  boot.initrd.availableKernelModules = [ "ahci" "nvme" ];
  boot.initrd.kernelModules = [ ];
  boot.kernelModules = [ "kvm-intel" ];
  boot.extraModulePackages = [ ];

  fileSystems."/" =
    { device = "/dev/nvme0n1p2";
      fsType = "btrfs";
    };

  swapDevices = [ ];

  nix.maxJobs = lib.mkDefault 16;
  powerManagement.cpuFreqGovernor = lib.mkDefault "powersave";
}
