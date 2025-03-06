{lib, ...}: {
  programs.neovim = {
    enable = true;

    viAlias = true;
    vimAlias = true;
    withNodeJs = true;
    withPython3 = true;
    defaultEditor = true;

    extraConfig = lib.fileContents ./nvim/init.lua;
  };
}
