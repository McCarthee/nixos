{
   programs.bash = {
      enable = true;
      enableCompletion = true;
      shellAliases = {
         ls = "eza";
         lh = "eza -lh";
         lah = "eza -lah";
         hm-logs = "journalctl -r --unit home-manager-$(echo $USER).service";
      };
   };
}