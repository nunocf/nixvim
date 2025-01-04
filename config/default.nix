{
  config,
  lib,
  ...
}: {
  # Import all your configuration modules here
  imports = [
    # base vim
    ./sets.nix
    ./keymaps.nix
    ./highlight.nix

    ./plugins/colorscheme/colorscheme.nix

    ./plugins/completion/cmp.nix
    ./plugins/completion/copilot-cmp.nix
    ./plugins/completion/lspkind.nix
    ./plugins/completion/cmp.nix

    ./plugins/git/gitlinker.nix
    ./plugins/git/gitsigns.nix
    ./plugins/git/lazygit.nix
    ./plugins/git/gitblame.nix

    ./plugins/web-devicons/web-devicons.nix

    # LSP stuff
    # ./plugins/lsp/conform.nix
    ./plugins/lsp/fidget.nix
    ./plugins/lsp/lsp.nix
    ./plugins/lsp/lspsaga.nix
    ./plugins/lsp/none-ls.nix
    ./plugins/lsp/trouble.nix

    # snippets
    ./snippets/luasnip.nix

    # Status bar
    ./plugins/statusline/lualine.nix

    # Treesitter
    ./plugins/treesitter/treesitter-context.nix
    ./plugins/treesitter/treesitter-textobjects.nix
    ./plugins/treesitter/treesitter.nix

    #epic file search/preview
    ./plugins/ui/telescope.nix

    # shows off I use Nvim :)
    ./plugins/ui/btw.nix

    # Shows a pretty cool bar for commands instead of the bottom bar.
    ./plugins/ui/noice.nix

    # top bar buffer files like VS Code
    ./plugins/ui/bufferline.nix

    # toast-like notifications
    ./plugins/ui/nvim-notify.nix

    ./plugins/utils/comment.nix
    ./plugins/utils/indent-blankline.nix
    ./plugins/utils/copilot.nix
    ./plugins/utils/flash.nix
    ./plugins/utils/hardtime.nix
    ./plugins/utils/grapple.nix
    ./plugins/utils/illuminate.nix
    ./plugins/utils/toggleterm.nix
    ./plugins/utils/nvim-autopairs.nix # pair symbols automatically

    #./plugins/utils/obsidian.nix
    ./plugins/utils/surround.nix
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
    # The base16 theme to use, if you want to use another theme, change it in colorscheme.nix
    theme = "paradise";
    extraConfigLua = ''
      _G.theme = "${config.theme}"
    '';
    vimAlias = true;
    viAlias = true;
  };
}
