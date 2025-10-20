{
  plugins.cmp = {
    enable = true;
    autoEnableSources = true;
    settings = {
      sources = [
        {name = "nvim_lsp";}
        {name = "path";}
        {name = "buffer";}
      ];
      mapping = {
        "<C-d>" =
          # Lua
          "cmp.mapping.scroll_docs(-4)";
        "<C-f>" =
          # Lua
          "cmp.mapping.scroll_docs(4)";
        "<C-Space>" =
          # Lua
          "cmp.mapping.complete()";
        "<C-e>" =
          # Lua
          "cmp.mapping.close()";
        "<Tab>" =
          # Lua
          "cmp.mapping(cmp.mapping.select_next_item({behavior = cmp.SelectBehavior.Select}), {'i', 's'})";
        "<S-Tab>" =
          # Lua
          "cmp.mapping(cmp.mapping.select_prev_item({behavior = cmp.SelectBehavior.Select}), {'i', 's'})";
        "<CR>" =
          # Lua
          "cmp.mapping.confirm({ select = false, behavior = cmp.ConfirmBehavior.Replace })";
      };
    };
  };
}
