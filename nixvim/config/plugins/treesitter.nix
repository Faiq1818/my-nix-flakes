{ pkgs, ... }:
{
  plugins = {
    treesitter = {
      enable = true;
      highlight.enable = true;
      indent.enable = true;

      nixvimInjections = true;
      grammarPackages = pkgs.vimPlugins.nvim-treesitter.allGrammars;
    };

    treesitter-context = {
      enable = false;
    };

    treesitter-textobjects = {
      enable = true;
      select = {
        enable = true;
        lookahead = true;
      };
    };
  };
}
