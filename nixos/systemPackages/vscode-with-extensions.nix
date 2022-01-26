{ config, pkgs, ... }:

with pkgs; vscode-with-extensions.override {
  vscodeExtensions = with vscode-extensions; [
    ms-vsliveshare.vsliveshare
    mskelton.one-dark-theme
    esbenp.prettier-vscode
    formulahendry.auto-rename-tag
    donjayamanne.githistory
    eamodio.gitlens
    kamikillerto.vscode-colorize
    streetsidesoftware.code-spell-checker
    dbaeumer.vscode-eslint
    graphql.vscode-graphql
    redhat.vscode-yaml
    wix.vscode-import-cost
  ] ++ (vscode-utils.extensionsFromVscodeMarketplace [
    {
      name      = "better-comments";
      publisher = "aaron-bond";
      version   = "2.1.0";
      sha256    = "0kmmk6bpsdrvbb7dqf0d3annpg41n9g6ljzc1dh0akjzpbchdcwp";
    }
    {
      name      = "nix";
      publisher = "bbenoist";
      version   = "1.0.1";
      sha256    = "0zd0n9f5z1f0ckzfjr38xw2zzmcxg1gjrava7yahg5cvdcw6l35b";
    }
    {
      name      = "npm-intellisense";
      publisher = "christian-kohler";
      version   = "1.4.0";
      sha256    = "0nyckfr2d6amddff6svnllvr5085x20b1gsfv85n4f71rz2zmp13";
    }
    {
      name      = "path-intellisense";
      publisher = "christian-kohler";
      version   = "2.7.0";
      sha256    = "11jbaz8dlr9zmamikgii6pvbncsm61bhkipfarlqrisgfk99im9w";
    }
    {
      name      = "vscode-npm-script";
      publisher = "eg2";
      version   = "0.3.24";
      sha256    = "1wj7wz81i26qrdh5jnbq85lwllkqg32qf500h7n0ar9jwwnlq1sy";
    }
    {
      name      = "liveserver";
      publisher = "ritwickdey";
      version   = "5.7.3";
      sha256    = "0gy8cz5wphfb2xyzsz1vqcgg9bwbb8g1qk051g68w17cqzw9w3gq";
    }
    {
      name      = "vscode-icons";
      publisher = "vscode-icons-team";
      version   = "11.8.0";
      sha256    = "147d5cba3jdfgjp22a5vvvp83z79mmmkd36hgplv7cgklfmnbdis";
    }
    {
      name      = "quokka-vscode";
      publisher = "wallabyjs";
      version   = "1.0.439";
      sha256    = "14zvhcn3qvksj3hfkzj7s12l99f2231j66p465bgld6p6mnzrx1a";
    }
    {
      name      = "vscode-todo-highlight";
      publisher = "wayou";
      version   = "1.0.5";
      sha256    = "1sg4zbr1jgj9adsj3rik5flcn6cbr4k2pzxi446rfzbzvcqns189";
    }
    {
      name      = "javascriptsnippets";
      publisher = "xabikos";
      version   = "1.8.0";
      sha256    = "19xg24alxsvq8pvafprshg7qxzx8p37bzk7qz6kjgkpvandrdpl6";
    }
    {
      name      = "reactsnippets";
      publisher = "xabikos";
      version   = "2.4.0";
      sha256    = "0gbs5pc9wrg7bcn1dakhfid1ancbz1ikz3n31hgawsgais5f931b";
    }
    #{
    #  name      = "";
    #  publisher = "";
    #  version   = "";
    #  sha256    = "0000000000000000000000000000000000000000000000000000";
    #}
  ]);
}
