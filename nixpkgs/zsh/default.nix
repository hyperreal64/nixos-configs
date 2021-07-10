{ config, lib, pkgs, ... }:

{
    programs.dircolors.enable = true;
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

    programs.tmux = {
        enable = true;
        terminal = "screen-256color";
    };

    programs.zsh = {
        enable = true;
        autocd = true;
        history = {
            ignoreDups = true;
            share = false;
        };
    };

    programs.zsh.initExtra = ''
        source ~/.zsh/antigen.zsh

        # Use oh-my-zsh library
        antigen use oh-my-zsh

        # Zsh plugins
        antigen bundle git
        antigen bundle extract
        antigen bundle fzf
        antigen bundle sudo
        antigen bundle systemd
        antigen bundle tmux
        antigen bundle "MichaelAquilina/zsh-you-should-use"
        antigen bundle zsh-users/zsh-autosuggestions
        antigen bundle zsh-users/zsh-history-substring-search
        antigen bundle zdharma/fast-syntax-highlighting
        antigen bundle git@github.com:spwhitt/nix-zsh-completions.git

        antigen theme romkatv/powerlevel10k

        antigen apply

        # Set keybinding for zsh-history-substring-search
        bindkey '^[[1;5A' history-substring-search-up
        bindkey '^[[1;5B' history-substring-search-down

        # Load bash completion
        autoload bashcompinit
        bashcompinit

        # Load goto shell utility
        [[ -f ~/.zsh/goto.sh ]] && source ~/.zsh/goto.sh

        # Functions
        [[ -s ~/.zsh/zfunctions ]] && source ~/.zsh/zfunctions

        # Powerlevel10k
        [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
    '';

    programs.zsh.shellAliases = {
         luamake = "/home/jas/source/github.com/sumneko/lua-language-server/3rd/luamake/luamake";
         privkey = "more ~/.ssh/id_ed25519 | xclip -selection clipboard | echo '=> Private key copied to clipboard'";
         pubkey = "more ~/.ssh/id_ed25519.pub | xclip -selection clipboard | echo '=> Public key copied to clipboard'";

        # Networking
         pubip = "curl ipinfo.io";
         netCons = "lsof -i";
         tulp = "ss -tulp";
         openPorts = "sudo lsof -i | grep LISTEN";
         pong = "ping -c 3 www.google.com";

        # File management
         grep = "grep --color";
         sgrep = "grep -R -n -H -C 5 --exclude-dir={.git} ";
         t = "tail -f";
         rm = "rm -i";
         cp = "cp -i";
         mv = "mv -i";
         ls = "lsd";
         la = "ls -a";
         ll = "ls -l";
         lal = "ls -al";
         reboot = "sudo systemctl reboot";
         shut = "sudo systemctl poweroff";
     };

     programs.zsh.shellGlobalAliases = {
         C = "| wc -l";
         H = "| head";
         F = "| fzf";
         T = "| tail";
         G = "| grep";
         L = "| less";
         M = "| most";
         LL = "2>&1 | less";
         CA = "2>&1 | cat -A";
         NE = "2> /dev/null";
         NUL = "> /dev/null 2>&1";
         CC = "| tr -d '\\n' | xclip -selection clipboard";
    };

    programs.zsh.sessionVariables = {
        PATH = "$PATH:/home/jas/bin:/home/jas/.local/bin";
        YSU_MESSAGE_POSITION = "after";
        PAGER = "less -X";
        REST_SERVER_IP = "azura.local";
        REST_SERVER_USER = "jas";
        RESTIC_PASSWORD_FILE = "/home/jas/.restic-pw";
        EDITOR = "nvim";
        FZF_COMPLETION_TRIGGER = "~~";
    };
}
