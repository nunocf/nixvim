{
  globals.mapleader = ",";
  keymaps = [
    {
      action = "<cmd>vsplit<CR><C-6>";
      key = "<leader>vs";
      mode = "n";
    }
    # Retain clipboard after pasting visually
    {
      action = "p";
      key = "\"_dp";
      mode = "v";
    }
  ];
}
