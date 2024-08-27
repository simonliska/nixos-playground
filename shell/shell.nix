{ pkgs ? import <nixpkgs> { system = "aarch64-darwin"; } }:

pkgs.mkShell {
  name = "arm-mac-shell-env";

  buildInputs = [
    pkgs.git
    pkgs.vim
    pkgs.tmux
    pkgs.curl
    pkgs.zsh
  ];

  shellHook = ''
    echo "Nix-shell environment loaded for ARM Mac!"
    export EDITOR=vim
    export PATH=$PATH:$HOME/.local/bin
    alias ll="ls -la"
  '';
}