{ config, pkgs, inputs, ... }: {

   imports = [ 
      ./hardware-configuration.nix
      ../../modules/nixos/misc/fonts.nix
   ];

   # Enable flakes
   nix.settings.experimental-features = [ "nix-command" "flakes" ];

   # Bootloader.
   boot.loader.systemd-boot.enable = true;
   boot.loader.efi.canTouchEfiVariables = true;

   # Define your hostname
   networking.hostName = "desktop";

   # Enable networking
   networking.networkmanager.enable = true;

   # Set your timezone
   time.timeZone = "Europe/London";

   # Select internationalisation properties
   i18n.defaultLocale = "en_GB.UTF-8";
   i18n.extraLocaleSettings = {
      LC_ADDRESS = "en_GB.UTF-8";
      LC_IDENTIFICATION = "en_GB.UTF-8";
      LC_MEASUREMENT = "en_GB.UTF-8";
      LC_MONETARY = "en_GB.UTF-8";
      LC_NAME = "en_GB.UTF-8";
      LC_NUMERIC = "en_GB.UTF-8";
      LC_PAPER = "en_GB.UTF-8";
      LC_TELEPHONE = "en_GB.UTF-8";
      LC_TIME = "en_GB.UTF-8";
   };

   # Configure keymap in X11
   services.xserver.xkb = {
      layout = "gb";
      variant = "";
   };

   # Configure console keymap
   console.keyMap = "uk";

   # Define a user account. Don't forget to set a password with ‘passwd’.
   users.users.gm = {
      isNormalUser = true;
      description = "GM";
      extraGroups = [ "networkmanager" "wheel" ];
      packages = with pkgs; [];
   };

   # Allow unfree packages
   nixpkgs.config.allowUnfree = true;

   environment.systemPackages = with pkgs; [
      git
      hydrus
   ];

   system.stateVersion = "24.05";

   home-manager = {
      # also pass inputs to home-manager modules
      extraSpecialArgs = {inherit inputs;};
      users = {
         "gm" = import ./home.nix;
      };
   };

   # Enable ssh
   services.openssh.enable = true;

   # enable mesa
   hardware.graphics.enable = true;

   # enable usb automount
   services.devmon.enable = true;
   services.gvfs.enable = true; 
   services.udisks2.enable = true;
}
