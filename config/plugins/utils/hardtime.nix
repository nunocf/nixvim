{
  plugins.hardtime = {
    settings = {
      disabled_filetypes = ["Oil"];
      restriction_mode = "hint";
      restricted_keys = {
        "h" = ["n" "x"];
        "j" = ["n" "x"];
        "k" = ["n" "x"];
        "l" = ["n" "x"];
        "-" = ["n" "x"];
        "+" = ["n" "x"];
        "gj" = ["n" "x"];
        "gk" = ["n" "x"];
        "<CR>" = ["n" "x"];
        "<C-M>" = ["n" "x"];
        "<C-N>" = ["n" "x"];
        "<C-P>" = ["n" "x"];
      };
      disable_mouse = false;
      max_count = 25;
      max_time = 1000;
      enabled = true;
      hint = true;
    };
    enable = true;
  };
}
