{ config, pkgs, ... }:
{
  fileSystems."/mnt/DoubleDisk" = {
    device = "/dev/disk/by-uuid/89f72d37-ab76-4f9f-b325-b58c2c484657";
    fsType = "ext4";
    options = [
      "users"
      "nofail"
      "defaults"
    ];
  };
}
