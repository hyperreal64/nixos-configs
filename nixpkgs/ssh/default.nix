{ config, lib, pkg, ... }:

{
    programs.ssh.enable = true;
    programs.ssh.matchBlocks = {
        "envs" = {
            hostname = "envs.net";
            user = "hyperreal";
        };
        "azura" = {
            hostname = "azura.local";
            user = "jas";
        };
        "uc" = {
            hostname = "unixc.at";
            user = "uc";
        };
    };
}
