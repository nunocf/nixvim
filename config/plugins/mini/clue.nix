{
  config,
  lib,
  ...
}:
let
  colors = import ../../colors/${config.theme}.nix { };
in
{
  plugins.mini.modules.clue = {
    window = {
      delay = 500;
      config = {
        border = "none";
        width.__raw = ''
          math.floor(0.318 * vim.o.columns)
        '';
        row = "auto";
        col = "auto";
        anchor = "NE";
      };
    };
    triggers = [
      {
        mode = "n";
        keys = "<leader>";
      }
      {
        mode = "x";
        keys = "<leader>";
      }
      {
        mode = "i";
        keys = "<C-x>";
      }
      {
        mode = "n";
        keys = "g";
      }
      {
        mode = "x";
        keys = "g";
      }
      {
        mode = "n";
        keys = "'";
      }
      {
        mode = "n";
        keys = "`";
      }
      {
        mode = "n";
        keys = "]";
      }
      {
        mode = "n";
        keys = "[";
      }
      {
        mode = "x";
        keys = "'";
      }
      {
        mode = "x";
        keys = "`";
      }
      {
        mode = "n";
        keys = "\"";
      }
      {
        mode = "x";
        keys = "\"";
      }
      {
        mode = "i";
        keys = "<C-r>";
      }
      {
        mode = "c";
        keys = "<C-r>";
      }
      {
        mode = "n";
        keys = "<C-w>";
      }
      {
        mode = "n";
        keys = "z";
      }
      {
        mode = "x";
        keys = "z";
      }
    ];
    clues = [
      { __raw = "require('mini.clue').gen_clues.builtin_completion()"; }
      { __raw = "require('mini.clue').gen_clues.g()"; }
      { __raw = "require('mini.clue').gen_clues.marks()"; }
      { __raw = "require('mini.clue').gen_clues.registers()"; }
      { __raw = "require('mini.clue').gen_clues.windows()"; }
      { __raw = "require('mini.clue').gen_clues.z()"; }
      {
        mode = "n";
        keys = "<Leader>b";
        desc = "+Buffers";
      }
      {
        mode = "n";
        keys = "<Leader><Tab>";
        desc = "+Tabs";
      }
      {
        mode = "n";
        keys = "<Leader>c";
        desc = "+Code";
      }
      {
        mode = "n";
        keys = "<Leader>f";
        desc = "+Find, etc";
      }
      {
        mode = "n";
        keys = "<Leader>g";
        desc = "+Git";
      }
      {
        mode = "n";
        keys = "<Leader>h";
        desc = "+Haskell";
      }
      {
        mode = "n";
        keys = "<Leader>hr";
        desc = "+REPL";
      }
      {
        mode = "n";
        keys = "<Leader>l";
        desc = "+Flash";
      }
      {
        mode = "n";
        keys = "<Leader>r";
        desc = "+Spectre";
      }
      {
        mode = "n";
        keys = "<Leader>u";
        desc = "+Utils";
      }
      {
        mode = "n";
        keys = "<Leader>v";
        desc = "+Splits";
      }
    ];
  };
  highlight =
    with colors;
    lib.mkIf (config.plugins.mini.enable && lib.hasAttr "clue" config.plugins.mini.modules) {
      MiniClueDescSingle = {
        bg = base01;
      };
      MiniClueDescGroup = {
        bg = base01;
        fg = base0E;
      };
      MiniClueNextKey = {
        bg = base01;
        fg = base0D;
      };
      MiniClueNextKeyWithPostkeys = {
        bg = base01;
        fg = base0F;
      };
      MiniClueSeparator = {
        bg = base01;
        fg = base0E;
      };
      MiniClueBorder = {
        bg = base01;
        fg = base0E;
      };
    };
}
