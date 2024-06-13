{
  plugins.oil = {
    enable = true;
    settings = {
      useDefaultKeymaps = true;
      deleteToTrash = true;
      skipConfirmForSimpleEdits = false;
      viewOptions = {
        showHidden = true;
        naturalOrder = true;
        isHiddenFile = {
          __raw = ''
            function(name, _)
              return name == ".." or name == ".git"
            end
          '';
        };
      };
    };
  };
  keymaps = [
    {
      mode = "n";
      key = "-";
      action = ":Oil --float<CR>";
      options = {
        desc = "Open parent directory";
        silent = true;
      };
    }
  ];
}
