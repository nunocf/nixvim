{
  plugins.conform-nvim = {
    enable = true;
    settings = {
      format_on_save = true;
      # lsp_fallback = true;
      # timeout_ms = 500;
    };
    notifyOnError = true;
    formattersByFt = {
      html = [["prettierd" "prettier"]];
      css = [["prettierd" "prettier"]];
      javascript = [["prettierd" "prettier"]];
      typescript = [["prettierd" "prettier"]];
      lua = ["stylua"];
      nix = ["alejandra"];
      markdown = [["prettierd" "prettier"]];
      yaml = ["yamlfmt"];
      cabal = ["cabal_fmt"];
      elm = ["elm_format"];
      ruby = ["rubocop"];
    };
  };
}
