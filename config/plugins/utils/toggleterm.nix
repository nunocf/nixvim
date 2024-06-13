{
  plugins.toggleterm = {
    enable = true;
    settings = {
      insert_mappings = false;
      open_mapping = "[[<leader>t]]";
      direction = "float";
      float_opts = {
        border = "curved";
        width = 200;
        height = 80;
      };
    };
  };
}
