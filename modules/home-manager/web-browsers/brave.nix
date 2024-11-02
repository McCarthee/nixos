{ pkgs, ... }: {

   programs.chromium = {
      enable = true;
      package = pkgs.brave;

      extensions = [
         { id = "nngceckbapebfimnlniiiahkandclblb"; } # bitwarden
         { id = "dbfoemgnkgieejfkaddieamagdfepnff"; } # 2fas
      ];
   };
}