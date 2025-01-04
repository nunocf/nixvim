{config, ...}: let
  colors = import ../../colors/${config.theme}.nix {};
in {
  plugins.lualine = {
    enable = true;
    settings = {
      options = {
        theme = {
          normal = {
            a = {
              bg = "#b4befe";
              fg = "#1c1d21";
            };
            b = {
              bg = "nil";
            };
            c = {
              bg = "nil";
            };
            z = {
              bg = "nil";
            };
            y = {
              bg = "nil";
            };
          };
        };
        globalstatus = true;
        disabled_filetypes = {
          statusline = ["dashboard" "alpha" "starter" "snacks_dashboard"];
        };
      };
      inactive_sections = {
        lualine_x = [
          "filename"
          "filetype"
        ];
      };
      sections = {
        lualine_a = [
          {
            __unkeyed = "mode";
            fmt = "string.lower";
            color = {
              fg =
                if config.colorschemes.base16.enable
                then colors.base04
                else "none";
              bg =
                if config.colorschemes.base16.enable
                then colors.base00
                else "none";
            };
          }
        ];
        lualine_b = [
          {
            __unkeyed = "branch";
            icon.__unkeyed = "";
            color = {
              fg =
                if config.colorschemes.base16.enable
                then colors.base04
                else "none";
              bg =
                if config.colorschemes.base16.enable
                then colors.base00
                else "none";
            };
            separator.left = "";
            separator.right = "";
          }
          "diff"
          {
            __unkeyed = "diff";
            separator.left = "";
            separator.right = "";
          }
        ];
        lualine_c = [
          {
            __unkeyed = "diagnostic";
            symbols = {
              error = " ";
              warn = " ";
              info = " ";
              hint = "󰝶 ";
            };
            color = {
              fg =
                if config.colorschemes.base16.enable
                then colors.base08
                else "none";
              bg =
                if config.colorschemes.base16.enable
                then colors.base00
                else "none";
            };
            separator.left = "";
            separator.right = "";
          }
        ];
        lualine_x = [
        ];
        lualine_y = [
          {
            __unkeyed = "filetype";
            icon_only = true;
            separator.left = "";
            separator.right = "";
          }
          {
            __unkeyed = "filename";
            symbols = {
              modified = "";
              readonly = "👁️";
              unnamed = "";
            };
            color = {
              fg =
                if config.colorschemes.base16.enable
                then colors.base04
                else "none";
              bg =
                if config.colorschemes.base16.enable
                then colors.base00
                else "none";
            };
            separator.left = "";
            separator.right = "";
          }
        ];
        lualine_z = [
          {
            __unkeyed = "location";
            color = {
              fg =
                if config.colorschemes.base16.enable
                then colors.base0B
                else "none";
              bg =
                if config.colorschemes.base16.enable
                then colors.base00
                else "none";
            };
            separator.left = "";
            separator.right = "";
          }
        ];
      };
    };
  };
}
