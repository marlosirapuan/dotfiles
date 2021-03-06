#!/usr/bin/env bash

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Save Homebrew’s installed location.
BREW_PREFIX=$(brew --prefix)

# Install GNU core utilities (those that come with OS X are outdated).
brew install coreutils
ln -s "${BREW_PREFIX}/bin/gsha256sum" "${BREW_PREFIX}/bin/sha256sum"

# Install essential libs
brew install automake autoconf openssl libyaml readline libxslt libtool
# asdf
# brew install asdf

# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed
# Install Ngrep
brew install ngrep

# Install Bash 5.
brew install bash
brew install bash-completion2

# Switch to using brew-installed bash as default shell
if ! fgrep -q "${BREW_PREFIX}/bin/bash" /etc/shells; then
  echo "${BREW_PREFIX}/bin/bash" | sudo tee -a /etc/shells;
  chsh -s "${BREW_PREFIX}/bin/bash";
fi;

# Install `wget`
brew install wget

# Install more recent versions of some macOS tools.
brew install vim
brew install grep
brew install openssh
brew install screen

# Install font tools. (https://github.com/mathiasbynens/dotfiles/blob/1b9145bb402a00a1ab695d7876706bfbbfc888af/brew.sh#L49)
brew tap bramstein/webfonttools
brew install sfnt2woff
brew install sfnt2woff-zopfli
brew install woff2

# Install other useful binaries.
brew install git
brew install git-lfs
brew install imagemagick
brew install ghostscript
brew install ssh-copy-id
brew install tree
brew install tmux

# Install custom tools
brew install cmake
brew install x265
brew install ffmpeg
brew install rbenv ruby-build
rbenv init

# Dev
brew install elixir
# brew install nvm
#  use: https://github.com/nvm-sh/nvm#installing-and-updating
brew install yarn
brew install watchman
# npm install -g react-native-cli

# Remove outdated versions from the cellar.
brew cleanup
