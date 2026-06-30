{
  programs.helix = {
    enable = true;
    defaultEditor = true;

    settings = {
      
      editor = {
        line-number = "relative";
      };
    };

    languages = {

      language = [
        {
          name = "c";
          formatter.command = "clang-format";
        }

        {
          name = "cpp";
          formatter.command = "clang-format";
        }
      ];
    };
  };
}
