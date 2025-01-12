{pkgs, ...}: {
  plugins.none-ls = {
    enable = true;
    enableLspFormat = true;
    settings = {
      update_in_insert = false;
    };
    sources = {
      code_actions = {
        statix.enable = true;
      };
      diagnostics = {
        statix.enable = true;
        yamllint.enable = true;
        rubocop = {
          enable = true;
          package = null;
        };
      };
      formatting = {
        nixfmt = {
          enable = true;
          package = pkgs.nixfmt-rfc-style;
        };
        prettier = {
          enable = true;
          disableTsServerFormatter = true;
          settings = {
            extra_args = ["--no-semi" "--single-quote"];
          };
        };
        prettierd.enable = true;
        stylua.enable = true;
        yamlfmt.enable = true;
        # elm_format.enable = true;
        rubocop = {
          enable = true;
          package = null;
        };
      };
    };
  };
  keymaps = [
    {
      mode = ["n" "v"];
      key = "<leader>cf";
      action = "<cmd>lua vim.lsp.buf.format()<cr>";
      options = {
        silent = true;
        desc = "Format";
      };
    }
  ];
}
