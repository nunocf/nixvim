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
  ];
}
