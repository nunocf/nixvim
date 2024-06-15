{
  globals.mapleader = ",";
  keymaps = [
    {
      action = "<cmd>vsplit<CR><C-6>";
      key = "<leader>vs";
      mode = "n";
      options.desc = "Vertical split";
    }
    # Retain clipboard after pasting visually
    {
      action = "p";
      key = "\"_dp";
      mode = "v";
    }
    # Visual stay in indent mode after < or >
    {
      action = "<gv";
      key = "<";
      mode = "v";
    }
    {
      action = ">gv";
      key = ">";
      mode = "v";
    }

    # stop highlighting with <CR>
    {
      action = ":noh<CR><CR>";
      key = "<CR>";
      mode = "n";
      options.noremap = true;
    }
    {
      action = "<C-W>h";
      key = "<C-h>";
      mode = "n";
    }
    {
      action = "<C-W>j";
      key = "<C-j>";
      mode = "n";
    }
    {
      action = "<C-W>k";
      key = "<C-k>";
      mode = "n";
    }
    {
      action = "<C-W>l";
      key = "<C-l>";
      mode = "n";
    }
  ];
}
