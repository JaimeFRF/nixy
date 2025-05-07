{ config, lib, ... }: {
  imports = [
    # Choose your theme here:
    ../../themes/nixy.nix
  ];

  config.var = {
    hostname = "nixos";
    username = "jaimefrf";
    configDirectory = "/home/" + config.var.username
      + "/.config/nixos"; # The path of the nixos configuration directory

    keyboardLayout = "pt";

    location = "Lisbon";
    timeZone = "Europe/Lisbon";
    defaultLocale = "en_US.UTF-8";
    extraLocale = "pt_PT.UTF-8";

    git = {
      username = "JaimeFrF";
      email = "jaimefrfonseca03@gmail.com";
    };

    autoUpgrade = false;
    autoGarbageCollector = true;
  };

  # Let this here
  options = {
    var = lib.mkOption {
      type = lib.types.attrs;
      default = { };
    };
  };
}
