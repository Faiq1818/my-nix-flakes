{
  plugins = {
    lsp = {
      enable = true;
      inlayHints = true;
      servers = {
        gopls = {
          enable = true;
        };
        ts_ls = {
          enable = true;
        };
      };
    };
  };
}
