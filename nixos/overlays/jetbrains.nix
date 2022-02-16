self: super:

with super;
let
  mkJetBrainsProduct = callPackage ./jetbrains/common.nix { };

  buildFleet = { name, version, src, license, description, wmClass, ... }:
    (mkJetBrainsProduct {
      inherit name version src wmClass jdk;
      product = "Fleet";
      meta = with lib; {
        homepage = "https://www.jetbrains.com/fleet/";
        inherit description license;
        longDescription = ''
          Built from scratch, based on 20 years of experience developing IDEs.
          Fleet uses the IntelliJ code-processing engine, with a distributed IDE architecture and a reimagined UI.
        '';
        maintainers = with maintainers; [ ];
        platforms = platforms.linux;
      };
    }).overrideAttrs (attrs:
      {

      });
in {
  jetbrains = super.jetbrains // {
    fleet = buildFleet rec {
      name = "fleet-${version}";
      version = "1.1.161";
      description = "Next-generation IDE by JetBrains";
      license = lib.licenses.unfree;
      src = fetchTarball "file:///data/apps/fleet/fleet-${version}.tar.gz";
      wmClass = "jetbrains-ide";
      update-channel = "Fleet";
    };
  };
}
