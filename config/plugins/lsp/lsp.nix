{
  plugins = {
    lsp-format.enable = true;
    lsp = {
      enable = true;
      servers = {
        eslint = {enable = true;};
        html = {enable = true;};
        lua_ls = {enable = true;};
        nixd = {enable = true;};
        marksman = {enable = true;};
        yamlls = {enable = true;};
        hls = {
          enable = true;
          installGhc = true;
          settings = {
            haskell = {
              formattingProvider = "ormolu";
            };
          };
          filetypes = ["haskell" "lhaskell" "cabal"];
        };

        elmls.enable = true;
        ruby_lsp = {
          enable = true;
          # use local ruby-lsp
          package = null;
        };
      };
      keymaps = {
        silent = true;
        lspBuf = {
          gd = {
            action = "definition";
            desc = "Goto Definition";
          };
          gr = {
            action = "references";
            desc = "Goto References";
          };
          gD = {
            action = "declaration";
            desc = "Goto Declaration";
          };
          gI = {
            action = "implementation";
            desc = "Goto Implementation";
          };
          gT = {
            action = "type_definition";
            desc = "Type Definition";
          };
          K = {
            action = "hover";
            desc = "Hover";
          };
          "<leader>cw" = {
            action = "workspace_symbol";
            desc = "Workspace Symbol";
          };
          "<leader>cr" = {
            action = "rename";
            desc = "Rename";
          };
        };
        diagnostic = {
          "<leader>cd" = {
            action = "open_float";
            desc = "Line Diagnostics";
          };
          "<leader>x" = {
            action = "goto_next";
            desc = "Next Diagnostic";
          };
          "<leader>X" = {
            action = "goto_prev";
            desc = "Previous Diagnostic";
          };
        };
      };
    };
  };
  extraConfigLua = ''
    local _border = "rounded"

    vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(
      vim.lsp.handlers.hover, {
        border = _border
      }
    )

    vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(
      vim.lsp.handlers.signature_help, {
        border = _border
      }
    )

    vim.diagnostic.config{
      float={border=_border}
    };

    require('lspconfig.ui.windows').default_options = {
      border = _border
    }
  '';
}
