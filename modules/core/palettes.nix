theme: let
  schemes = {
    catppuccin-frappe = {
      base00 = "303446"; # base
      base01 = "292c3c"; # mantle
      base02 = "414559"; # surface0
      base03 = "51576d"; # surface1
      base04 = "626880"; # surface2
      base05 = "c6d0f5"; # text
      base06 = "f2d5cf"; # rosewater
      base07 = "babbf1"; # lavender
      base08 = "e78284"; # red
      base09 = "ef9f76"; # peach
      base0A = "e5c890"; # yellow
      base0B = "a6d189"; # green
      base0C = "81c8be"; # teal
      base0D = "8caaee"; # blue
      base0E = "ca9ee6"; # mauve
      base0F = "eebebe"; # flamingo
    };

    # TODO: edit configuration so this light theme looks good out of the box
    catppuccin-latte = {
      base00 = "eff1f5"; # base
      base01 = "e6e9ef"; # mantle
      base02 = "ccd0da"; # surface0
      base03 = "bcc0cc"; # surface1
      base04 = "acb0be"; # surface2
      base05 = "4c4f69"; # text
      base06 = "dc8a78"; # rosewater
      base07 = "7287fd"; # lavender
      base08 = "d20f39"; # red
      base09 = "fe640b"; # peach
      base0A = "df8e1d"; # yellow
      base0B = "40a02b"; # green
      base0C = "179299"; # teal
      base0D = "1e66f5"; # blue
      base0E = "8839ef"; # mauve
      base0F = "dd7878"; # flamingo
    };

    catppuccin-macchiato = {
      base00 = "24273a"; # base
      base01 = "1e2030"; # mantle
      base02 = "363a4f"; # surface0
      base03 = "494d64"; # surface1
      base04 = "5b6078"; # surface2
      base05 = "cad3f5"; # text
      base06 = "f4dbd6"; # rosewater
      base07 = "b7bdf8"; # lavender
      base08 = "ed8796"; # red
      base09 = "f5a97f"; # peach
      base0A = "eed49f"; # yellow
      base0B = "a6da95"; # green
      base0C = "8bd5ca"; # teal
      base0D = "8aadf4"; # blue
      base0E = "c6a0f6"; # mauve
      base0F = "f0c6c6"; # flamingo
    };

    catppuccin-mocha = {
      base00 = "1e1e2e"; # base
      base01 = "181825"; # mantle
      base02 = "313244"; # surface0
      base03 = "45475a"; # surface1
      base04 = "585b70"; # surface2
      base05 = "cdd6f4"; # text color
      base06 = "f5e0dc"; # rosewater
      base07 = "b4befe"; # lavender
      base08 = "f38ba8"; # red
      base09 = "fab387"; # peach
      base0A = "f9e2af"; # yellow
      base0B = "a6e3a1"; # green
      base0C = "94e2d5"; # teal
      base0D = "89b4fa"; # blue
      base0E = "cba6f7"; # mauve
      base0F = "f2cdcd"; # flamingo
    };
  };

  formatSchemes = builtins.mapAttrs (_: scheme: (scheme
    // {
      colors = builtins.mapAttrs (_: value: "#${value}") scheme;
      # accent colors defined here
      accent0 = "${scheme.base0D}";
      accent1 = "${scheme.base0E}";
    }))
  schemes;

  active = formatSchemes.${theme};
in
  schemes
  // {
    activeScheme = active;
    activeBase16 = schemes.${theme}; # Raw base16 scheme for stylix
  }
