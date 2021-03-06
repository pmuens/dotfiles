{ config, pkgs, ... }:

{
  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

  # Home Manager needs a bit of information about you and the
  # paths it should manage.
  home.username = "philipp";
  home.homeDirectory = "/Users/philipp";

  programs.ssh = {
    enable = true;
    # NOTE: Keep in sync with `programs.git` config
    matchBlocks = {
      "github" = {
        hostname = "github.com";
        user = "git";
        identityFile = "~/.ssh/github-pmuens";
        identitiesOnly = true;
      };
      "github-pmuens" = {
        hostname = "github.com";
        user = "git";
        identityFile = "~/.ssh/github-pmuens";
        identitiesOnly = true;
      };
      # "github-jdoe" = {
      #   hostname = "github.com";
      #   user = "git";
      #   identityFile = "~/.ssh/github-jdoe";
      #   identitiesOnly = true;
      # };
    };
  };

  programs.git = {
    enable = true;
    userName = "Philipp Muens";
    userEmail = "philipp@muens.io";
    extraConfig = { color.ui = true; };
    signing = {
      key = "philipp@muens.io";
      signByDefault = false;
    };
    # NOTE: Keep in sync with `programs.ssh` config
    includes = [{
      condition = "gitdir:~/code/pmuens/";
      contents = {
        user = {
          name = "Philipp Muens";
          email = "philipp@muens.io";
          signingkey = "philipp@muens.io";
        };
        commit = { gpgsign = false; };
      };
    }
    # {
    #   condition = "gitdir:~/code/jdoe/";
    #   contents = {
    #     user = {
    #       name = "John Doe";
    #       email = "jdoe@example.com";
    #       signingkey = "jdoe@example.com";
    #     };
    #     commit = { gpgsign = false; };
    #   };
    # }
      ];
  };

  programs.zsh = {
    enable = true;
    enableCompletion = true;
    enableAutosuggestions = true;
    plugins = [
      {
        name = "zsh-autosuggestions";
        src = pkgs.fetchFromGitHub {
          owner = "zsh-users";
          repo = "zsh-autosuggestions";
          rev = "v0.6.3";
          sha256 = "1h8h2mz9wpjpymgl2p7pc146c1jgb3dggpvzwm9ln3in336wl95c";
        };
      }
      {
        name = "zsh-syntax-highlighting";
        src = pkgs.fetchFromGitHub {
          owner = "zsh-users";
          repo = "zsh-syntax-highlighting";
          rev = "be3882aeb054d01f6667facc31522e82f00b5e94";
          sha256 = "0w8x5ilpwx90s2s2y56vbzq92ircmrf0l5x8hz4g1nx3qzawv6af";
        };
      }
    ];
  };

  # This value determines the Home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new Home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update Home Manager without changing this value. See
  # the Home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "21.11";
}
