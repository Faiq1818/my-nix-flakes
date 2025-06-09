{ pkgs, lib, ... }:

{
  vim = {
    theme = {
      enable = true;
      name = "gruvbox";
      style = "dark";
    };

    visuals = {
        indent-blankline.enable = true;
        indent-blankline.setupOpts.scope.enabled = true;
        indent-blankline.setupOpts.indent.smart_indent_cap = true;
    };

        statusline = { 
                lualine.enable = true;
                lualine.refresh.statusline = 50;
        };

    telescope.enable = true;
    autocomplete.nvim-cmp.enable = true;
    filetree.neo-tree.enable = true;
    lsp.enable = true;
    tabline.nvimBufferline.enable = true;
        binds = {
                whichKey.enable = true;
                whichKey.setupOpts.preset = "helix";
        };

        terminal = { 
                toggleterm.enable = true;
                toggleterm.setupOpts.direction = "float";
        };

    languages = {
      enableTreesitter = true;
      nix.enable = true;
      nix.lsp.enable = true;
      nix.format.enable = true;
      ts.enable = true;
      ts.format.enable = true;
      ts.lsp.enable = true;
      rust.enable = true;
    };
  };
}
