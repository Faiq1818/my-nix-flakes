{
  globals.mapleader = " ";
  keymaps = [
    {
      action = "<C-\\><C-n>";
      key = "<Esc><Esc>";
      options = {
        silent = true;
      };
      mode = "t";
    }
    {
      action = "<C-w>";
      key = "<leader>w";
      options = {
        silent = true;
      };
      mode = "n";
    }
  ];
}
