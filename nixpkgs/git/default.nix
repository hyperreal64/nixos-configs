{ config, pkgs, ... }:

let
  gitConfig = {
    core = {
      editor = "nvim";
      pager  = "diff-so-fancy | less --tabs=4 -RFX";
    };
    init.defaultBranch = "main";
    pull.rebase = true;
  };
in
{
  programs.git = {
    enable = true;
    extraConfig = gitConfig;
    userEmail = "hyperreal64@gmail.com";
    userName = "Jeffrey Serio";
  };
}
