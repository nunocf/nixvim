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

    ./plugins/colorscheme/colorscheme.nix

    ./plugins/completion

    ./plugins/git

    ./plugins/lsp

    ./plugins/mini

    ./plugins/snacks

    ./snippets/luasnip.nix

    ./plugins/statusline/lualine.nix

    ./plugins/treesitter

    ./plugins/ui

    ./plugins/utils/comment.nix
    ./plugins/utils/copilot.nix
    ./plugins/utils/flash.nix
    ./plugins/utils/hardtime.nix
    ./plugins/utils/grapple.nix
    ./plugins/utils/illuminate.nix
    ./plugins/utils/toggleterm.nix

    #./plugins/utils/obsidian.nix
    ./plugins/utils/oil.nix # buffer based directory editor
    ./plugins/utils/undotree.nix
    ./plugins/utils/ufo.nix
    ./plugins/utils/whichkey.nix # show mappings as you're using them
    ./plugins/utils/spider.nix # improved b, e w g motions
    ./plugins/utils/vim-visual-multi.nix # multiline cursor
  ];

  options = {
    theme = lib.mkOption {
      default = lib.mkDefault "paradise";
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
