{ pkgs, ... }: {
   programs.vscode = {
      enable = true;
      package = pkgs.vscodium;
      mutableExtensionsDir = false;
         enableUpdateCheck = false;
         enableExtensionUpdateCheck = false;
         userSettings = {
            window = {
               titleBarStyle = "custom";
            };

            editor = {
               fontSize = 14;
               fontFamily = "'JetBrainsMono Nerd Font', monospace";
               tabSize = 3;
               detectIndentation = false;
               cursorBlinking = "expand";
               cursorSmoothCaretAnimation = "on";
               formatOnSave = true;
               semanticHighlighting.enabled = true;
               guides.indentation = false;
            };

            git.autofetch = true;

            "workbench.iconTheme" = "catppuccin-mocha";
            workbench = {
               colorTheme = "Catppuccin Mocha";
            };

            terminal = {
               integrated.minimumContrastRatio = 1;
            };
         };

         extensions = with pkgs.vscode-extensions; [
            astro-build.astro-vscode # Astro
            bbenoist.nix # Nix
            ritwickdey.liveserver # Live Server
            ms-azuretools.vscode-docker # Docker
            catppuccin.catppuccin-vsc # Catppuccin theme
            catppuccin.catppuccin-vsc-icons # Catppuccin icon theme
            bradlc.vscode-tailwindcss # Tailwind
            vitaliymaz.vscode-svg-previewer # SVG Previewer
            github.vscode-github-actions # GitHub Actions
         ];
   };
}
