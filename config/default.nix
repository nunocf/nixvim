{
  config,
  lib,
  ...
}:
{
  # Import all your configuration modules here
  imports = [
    # base vim
    ./autocommands.nix
    ./sets.nix
    ./keymaps.nix
    ./highlight.nix

    ./snippets/luasnip.nix

    ./plugins/colorscheme/colorscheme.nix
    ./plugins/completion
    ./plugins/git
    ./plugins/lsp
    ./plugins/mini
    ./plugins/snacks
    ./plugins/statusline/lualine.nix
    ./plugins/treesitter
    ./plugins/ui
    ./plugins/utils
  ];

  options = {
    theme = lib.mkOption {
      default = lib.mkDefault "everforest";
      type = lib.types.enum [
        "aquarium"
        "decay"
        "edge-dark"
        "everblush"
        "everforest"
        "far"
        "gruvbox"
        "jellybeans"
        "material"
        "material-darker"
        "mountain"
        "ocean"
        "oxocarbon"
        "paradise"
        "tokyonight"
        "yoru"
      ];
    };
    assistant = lib.mkOption {
      default = "none";
      type = lib.types.enum [
        "copilot"
        "none"
      ];
    };
  };

  config = {
    # The base16 theme to use, if you want to use another theme,
    # change it in colorscheme.nix
    theme = "everforest";
    extraConfigLua = ''
      _G.theme = "${config.theme}"
    '';
    vimAlias = true;
    viAlias = true;
  };
}
