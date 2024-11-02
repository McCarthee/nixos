{ pkgs, ... }: {

   fonts.packages = with pkgs; [
      noto-fonts
      noto-fonts-extra
      noto-fonts-cjk-sans
      noto-fonts-emoji
      liberation_ttf
      ubuntu_font_family
      
      (nerdfonts.override { 
         fonts = [ "JetBrainsMono" ]; 
      })
   ];
}