{ config, pkgs, ... }:

{
  home.username = "fer";
  home.homeDirectory = "/home/fer";
  home.stateVersion = "25.05";

  programs.bash = {
    enable = true;
    shellAliases = {
      btw = "echo i use nixos btw";
      nrs = "sudo nixos-rebuild switch";
    };

    initExtra = ''
      export PS1='\[\e[38;5;76m\]\u\[\e[0m\] in \[\e[38;5;38m\]\w\[\e[0m\] \\$ '
    '';
  };

  programs.alacritty = {
    enable = true;
    settings = {
      window.opacity =  0.9;
      font.normal = {
	family = "JetBrains Mono";
	style = "Regular";
      };
      font.size = 12;
    };
  };

  home.packages = with pkgs; [
    bat
  ];
}
