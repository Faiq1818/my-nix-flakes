{
  plugins.which-key = {
    enable = true;
    settings = {
      delay = 0;
      expand = 1;
      preset = "helix";
      win = {
        border = "single";
      };
      spec = [
        {
          __unkeyed-1 = "<leader>w";
          group = "Windows";
          proxy = "<C-w>";
        }
        {
          __unkeyed-1 = "<leader>e";
          __unkeyed-2 = "<cmd>Explore<CR>";
          icon = "󰙅 ";
          desc = "Explore";
          mode = "n";
        }
      ];
    };
  };
}
