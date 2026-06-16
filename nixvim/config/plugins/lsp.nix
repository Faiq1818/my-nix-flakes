{
  plugins = {
    lsp = {
      enable = true;
      inlayHints = true;
      servers = {
        gopls.enable = true;
        ts_ls.enable = true;
        html.enable = true;
        tailwindcss.enable = true;
        nil_ls.enable = true;
        basedpyright.enable = true;
        vue_ls.enable = true;
        lua_ls.enable = true;
        postgres_lsp.enable = true;
        yamlls.enable = true;
        jsonls.enable = true;
        jdtls.enable = true;
      };
      keymaps = {
        diagnostic = {
          "<leader>ln" = "goto_next";
          "<leader>lp" = "goto_prev";
          "<leader>le" = "open_float";
        };
        lspBuf = {
          "<leader>lh" = "hover";
          "<leader>lf" = "format";
          "<leader>lr" = "references";
          "<leader>ld" = "definition";
          "<leader>li" = "implementation";
          "<leader>lt" = "type_definition";
        };
      };
    };
  };
}
