{ config, ... }:
let
  colors = import ../../colors/${config.theme}.nix;
in
{
  colorschemes = {
    rose-pine = {
      enable = false;
      settings = {
        dark_variant = "moon";
      };

    };
    everforest = {
      enable = true;
    };
    kanagawa = {
      enable = false;
    };

    base16 = {
      enable = false;
      setUpBar = false;
      colorscheme = colors;
      settings = {
        cmp = true;
        illuminate = true;
        indentblankline = true;
        lsp_semantic = true;
        mini_completion = true;
        telescope = true;
        telescope_borders = false;
      };
    };
  };
}
