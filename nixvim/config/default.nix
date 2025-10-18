{
  imports = [
    ./keymaps.nix
    ./opts.nix
    ./colorscheme.nix
    ./plugins/lualine.nix
    # need fix, breaking changes
    #./plugins/neo-tree.nix
    ./plugins/mini.nix
    ./plugins/barbar.nix
    ./plugins/which-key.nix
    ./plugins/lsp.nix
  ];
}
