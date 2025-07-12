{ pkgs, lib, ... }:

{
    vim = {
        theme = {
            enable = true;
            name = "catppuccin";
            style = "mocha";
        };

        keymaps = [
            {
                key = "<leader>e";
                mode = "n";
                silent = true;
                action = ":Neotree position=right<CR>";
            }
            {
                key = "<leader>w";
                mode = "n";
                silent = true;
                action = "<C-w>";
            }
            {
                key = "<leader>t";
                mode = "n";
                silent = true;
                action = ":ToggleTerm<CR>";
            }
            {
                key = "<Esc>";
                mode = "t";
                action = "<C-\\><C-n>";
                silent = true;
            }
            {
                key = "<leader>h";
                mode = "n";
                action = ":bprevious<CR>";
                silent = true;
            }
            {
                key = "<leader>j";
                mode = "n";
                action = ":bnext<CR>";
                silent = true;
            }
            {
                key = "<leader>i";
                mode = "n";
                action = ":bdelete<CR>";
                silent = true;
            }
        ];

        #        options = {
        #   tabstop = 4;
        #   shiftwidth = 4;
        #};

        visuals = {
            indent-blankline.enable = true;
            indent-blankline.setupOpts.scope.enabled = true;
            indent-blankline.setupOpts.indent.smart_indent_cap = true;
        };

        clipboard = {
            enable = true;
            providers.wl-copy.enable = true;
            registers = "unnamedplus";
        };

        statusline = { 
            lualine.enable = true;
            lualine.refresh.statusline = 50;
        };

        telescope.enable = true;
        autocomplete.nvim-cmp.enable = true;
        filetree.neo-tree.enable = true;
        filetree.neo-tree.setupOpts.enable_refresh_on_write = false;
        lsp.enable = true;
        tabline.nvimBufferline.enable = true;
        utility.sleuth.enable = true;


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
            nix.treesitter.enable = true;
            ts.enable = true;
            ts.format.enable = true;
            ts.treesitter.enable = true;
            ts.lsp.enable = true;
            tailwind.enable = true;
            tailwind.lsp.enable = true;
            rust.enable = true;
        };
    };
}
