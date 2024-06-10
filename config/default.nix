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

    ./plugins/colorscheme/biscuit.nix
    ./plugins/colorscheme/colorscheme.nix

    ./plugins/completion/cmp.nix
    ./plugins/completion/copilot-cmp.nix
    ./plugins/completion/lspkind.nix
    ./plugins/completion/cmp.nix

    ./plugins/git/gitlinker.nix
    ./plugins/git/gitsigns.nix
    ./plugins/git/lazygit.nix
    ./plugins/git/worktree.nix

    # LSP stuff
    ./plugins/lsp/conform.nix
    ./plugins/lsp/fidget.nix
    ./plugins/lsp/hlchunk.nix
    ./plugins/lsp/lsp.nix
    ./plugins/lsp/lspsaga.nix
    ./plugins/lsp/none-ls.nix
    ./plugins/lsp/trouble.nix

    # snippets
    ./snippets/luasnip.nix

    # Status bar
    ./plugins/statusline/lualine.nix

    # Treesitter
    # ./plugins/treesitter/treesitter-context.nix
    ./plugins/treesitter/treesitter-textobjects.nix
    ./plugins/treesitter/treesitter.nix

    #epic file search/preview
    ./plugins/ui/telescope.nix

    # top bar buffer files like a file explorer
    ./plugins/ui/bufferline.nix

    # shows off I use Nvim :)
    ./plugins/ui/btw.nix

    # Shows a pretty cool bar for commands instead of the bottom bar.
    ./plugins/ui/noice.nix

    # toast-like notifications
    ./plugins/ui/nvim-notify.nix

    ./plugins/utils/nvim-tree.nix # File explorer!

    ./plugins/utils/comment.nix
    ./plugins/utils/copilot.nix
    ./plugins/utils/flash.nix
    ./plugins/utils/hardtime.nix
    ./plugins/utils/grapple.nix
    ./plugins/utils/illuminate.nix
    ./plugins/utils/nvim-autopairs.nix # pair symbols automatically

    #./plugins/utils/obsidian.nix
    ./plugins/utils/surround.nix
    ./plugins/utils/oil.nix # buffer based directory editor
    ./plugins/utils/undotree.nix
    ./plugins/utils/ufo.nix
    ./plugins/utils/whichkey.nix # show mappings as you're using them
    ./plugins/utils/nvim-tree.nix # File explorer!
  ];

  options = {
    theme = lib.mkOption {
      default = "everforest";
      type = lib.types.enum [
        "paradise"
        "decay"
        "mountain"
        "tokyonight"
        "everforest"
        "everblush"
        "jellybeans"
        "aquarium"
        "gruvbox"
      ];
    };
  };
  config = {
    # The base16 theme to use, if you want to use another theme, change it in colorscheme.nix
    theme = "everforest";
    extraConfigLua = ''
      _G.theme = "${config.theme}"
    '';
  };
}
