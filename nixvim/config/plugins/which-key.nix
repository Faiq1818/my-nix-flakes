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
          desc = "Explore";
          icon = "󰙅 ";
          mode = "n";
        }
        {
          __unkeyed-1 = "<leader>t";
          __unkeyed-2 = "<cmd>terminal<CR>";
          desc = "Terminal";
          icon = "  ";
          mode = "n";
        }
        # Buffers Group
        {
          __unkeyed-1 = "<leader>a";
          group = "Buffers";
          icon = "󰓩 ";
        }
        # Key inside Buffers group
        {
          __unkeyed-1 = "<leader>ah";
          __unkeyed-2 = "<cmd>BufferPrevious<CR>";
          desc = "Previous Buffer";
          icon = "󰒮 ";
          mode = "n";
        }
        {
          __unkeyed-1 = "<leader>aj";
          __unkeyed-2 = "<cmd>BufferMovePrevious<CR>";
          desc = "Buffer Move Previous";
          icon = " ";
          mode = "n";
        }
        {
          __unkeyed-1 = "<leader>ak";
          __unkeyed-2 = "<cmd>BufferMoveNext<CR>";
          desc = "Buffer Move Next";
          icon = " ";
          mode = "n";
        }
        {
          __unkeyed-1 = "<leader>al";
          __unkeyed-2 = "<cmd>BufferNext<CR>";
          desc = "Next Buffer";
          icon = "󰒭 ";
          mode = "n";
        }
        {
          __unkeyed-1 = "<leader>ai";
          __unkeyed-2 = "<cmd>BufferClose<CR>";
          desc = "Close Buffer";
          icon = "󰆴 ";
          mode = "n";
        }
      ];
    };
  };
}
