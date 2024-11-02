{
   imports = [
      ../terminals/foot.nix
   ];

   wayland.windowManager.hyprland = {
      enable = true;

      settings = {
         monitor = "eDP-1, 1920x1080@60, 0x0, 1"; 

         "$mod" = "SUPER";
         bind = [
            "$mod_shift, c, killactive" # kill active window
            "$mod_shift_control, q, exit" # exit hyprland

            "$mod, 1, workspace, 1"
            "$mod, 2, workspace, 2"
            "$mod, 3, workspace, 3"
            "$mod, 4, workspace, 4"
            "$mod, 5, workspace, 5"
            "$mod, 6, workspace, 6"
            "$mod, 7, workspace, 7"
            "$mod, 8, workspace, 8"
            "$mod, 9, workspace, 9"
            "$mod_shift, 1, movetoworkspacesilent, 1"
            "$mod_shift, 2, movetoworkspacesilent, 2"
            "$mod_shift, 3, movetoworkspacesilent, 3"
            "$mod_shift, 4, movetoworkspacesilent, 4"
            "$mod_shift, 5, movetoworkspacesilent, 5"
            "$mod_shift, 6, movetoworkspacesilent, 6"
            "$mod_shift, 7, movetoworkspacesilent, 7"
            "$mod_shift, 8, movetoworkspacesilent, 8"
            "$mod_shift, 9, movetoworkspacesilent, 9"

            # Program launch binds.
            "$mod, return, exec, foot" # terminal
            "$mod, w, exec, brave" # web browser
         ];
      };
   };
}