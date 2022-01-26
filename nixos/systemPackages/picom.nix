{ config, pkgs, ... }:

with pkgs; picom.overrideAttrs (oldAttrs: rec {
  pname = "picom-jonaburg-fix";
  version = "unstable-2021-12-21";
  src = fetchFromGitHub {
    owner = "Arian8j2";
    repo = "picom-jonaburg-fix";
    rev = "31d25da22b44f37cbb9be49fe5c239ef8d00df12";
    sha256 = "0vkf4azs2xr0j03vkmn4z9ll4lw7j8s2k0rdsfw630hd78l1ngnp";
  };
})
