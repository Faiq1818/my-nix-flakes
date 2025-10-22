{
  plugins = {
    lsp = {
      enable = true;
      inlayHints = true;
      servers = {
        gopls.enable = true;
        ts_ls.enable = true;
        denols.enable = true;
        html.enable = true;
        tailwindcss.enable = true;
        nixd.enable = true;
      };
      keymaps = {
      diagnostic =
	{
	  "<leader>ln" = "goto_next";
	  "<leader>lp" = "goto_prev";
	  "<leader>le" = "open_float";
	};
	lspBuf = {  
	"<leader>lK" = "hover";
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
