{ config, lib, pkgs, ... }:

{
    programs.dircolors.enable = true;
    
    programs.htop.enable = true;

    programs.jq.enable = true;

    programs.direnv = {
        enable = true;
        nix-direnv.enable = true;
    };

    programs.fzf = {
        enable = true;
        defaultCommand = "fd --type f";
    };

    programs.skim = {
        enable = true;
        defaultCommand = "fd --type f";
    };

    programs.bat = {
        enable = true;
        config = {
            pager = "less -FR";
            theme = "Dracula";
        };
    };

    programs.lsd.enable = true;
}
