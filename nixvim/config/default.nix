{
  imports = [
    ./keymaps.nix
    ./opts.nix
    ./colorscheme.nix
    ./plugins/sleuth.nix
    ./plugins/neo-tree.nix
    ./plugins/mini.nix
    ./plugins/toggleterm.nix
    ./plugins/barbar.nix
    ./plugins/treesitter.nix
    ./plugins/which-key.nix
    ./plugins/nvim-cmp.nix
    ./plugins/lsp.nix
    ./plugins/nvim-lint.nix
    ./plugins/indent-blankline.nix
    ./plugins/telescope.nix
    ./plugins/leetcode.nix
    ./plugins/gitsigns.nix

    # snippets
    ./plugins/luasnip.nix
    ./plugins/friendly-snippets.nix
  ];

  nixpkgs.config.allowUnfreePredicate = pkg:
    builtins.elem (pkg.pname or "") [
      "barbar.nvim"
    ];
}
