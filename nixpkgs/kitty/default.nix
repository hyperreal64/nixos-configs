{ config, lib, ... }:

{
    programs.kitty = {
        enable = true;
        font.name = "JetBrainsMono Nerd Font Mono";
        font.size = 12;
        settings = {
            scrollback_lines = 10000;
            enable_audio_bell = false;
            hide_window_decorations = "yes";
            copy_on_select = "yes";
            input_delay = 1;
            remember_window_size = "yes";
            initial_window_height = "600";
            initial_window_width = "800";
            strip_trailing_spaces = "always";
            tab_bar_edge = "top";
            tab_bar_style = "powerline";
            tab_powerline_style = "slanted";
            background = "#1E1C31";
            foreground = "#CBE3E7";
            cursor = "#A1EFD3";
            selection_background = "#3E3859";
            selection_foreground = "#CBE3E7";
            color0 = "#1E1C31";
            color8 = "#585273";
            color1 = "#F48FB1";
            color9 = "#F02E6E";
            color2 = "#A1EFD3";
            color10 = "#62D196";
            color3 = "#FFE6B3";
            color11 = "#F2B482";
            color4 = "#91DDFF";
            color12 = "#65B2FF";
            color5 = "#D4BFFF";
            color13 = "#A37ACC";
            color6 = "#87DFEB";
            color14 = "#63F2F1";
            color7 = "#CBE3E7";
            color15 = "#8A889D";
            active_border_color = "#A1EFD3";
            inactive_border_color = "#585273";
            bell_border_color = "#F56574";
            active_tab_foreground = "#2D2B40";
            active_tab_background = "#63F2F1";
            active_tab_font_style = "bold";
            inactive_tab_foreground = "#CBE3E7";
            inactive_tab_background = "#585273";
            inactive_tab_font_style = "normal";
        };
    };

}
