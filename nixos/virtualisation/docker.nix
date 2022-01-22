{ config, pkgs, ... }:

{
  enable = true;
  enableOnBoot = true;
  extraOptions = "--registry-mirror=https://docker.uclv.cu";
}
