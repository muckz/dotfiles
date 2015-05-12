#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade --all

# Install GNU core utilities (those that come with OS X are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
sudo ln -s /usr/local/bin/gsha256sum /usr/local/bin/sha256sum

# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed --with-default-names
# Install Bash 4.
# Note: don’t forget to add `/usr/local/bin/bash` to `/etc/shells` before
# running `chsh`.
brew install bash
brew tap homebrew/versions
brew install bash-completion2

# Install `wget` with IRI support.
brew install wget --with-iri

# Install RingoJS and Narwhal.
# Note that the order in which these are installed is important;
# see http://git.io/brew-narwhal-ringo.
brew install ringojs
brew install narwhal

# Install more recent versions of some OS X tools.
brew install vim --override-system-vi
brew install homebrew/dupes/grep
brew install homebrew/dupes/openssh
brew install homebrew/dupes/screen
brew install homebrew/php/php55 --with-gmp

# Install font tools.
brew tap bramstein/webfonttools
brew install sfnt2woff
brew install sfnt2woff-zopfli
brew install woff2

# Install some CTF tools; see https://github.com/ctfs/write-ups.
brew install aircrack-ng
brew install bfg
brew install binutils
brew install binwalk
brew install cifer
brew install dex2jar
brew install dns2tcp
brew install fcrackzip
brew install foremost
brew install hashpump
brew install hydra
brew install john
brew install knock
brew install netpbm
brew install nmap
brew install pngcheck
brew install socat
brew install sqlmap
brew install tcpflow
brew install tcpreplay
brew install tcptrace
brew install ucspi-tcp # `tcpserver` etc.
brew install xpdf
brew install xz

# Install other useful binaries.
brew install ack
#brew install exiv2
brew install git
brew install git-lfs
brew install imagemagick --with-webp
brew install lua
brew install lynx
brew install p7zip
brew install pigz
brew install pv
brew install rename
brew install rhino
brew install speedtest_cli
brew install ssh-copy-id
brew install tree
brew install webkit2png
brew install zopfli

brew tap caskroom/cask
brew install brew-cask

#added
brew install colordiff
brew install gdbm
brew install icu4c
brew install libtool
brew install node
brew install python
brew install unixodbc
brew install autoconf
brew install composer
brew install gettext
brew install imagemagick
brew install libxml2
brew install openssl
brew install php55-mcrypt
brew install readline
brew install autojump
brew install curl
brew install jpeg
brew install mcrypt
brew install ossp-uuid
brew install phpmd
brew install sqlite
brew install freetype
brew install git-flow
brew install libpng
brew install mhash
brew install php-code-sniffer
brew install pkg-config
brew install terminal-notifier
brew install zlib
brew install heroku-toolbelt

#Quicklook Plugins
brew cask install qlcolorcode
brew cask install qlstephen
brew cask install qlmarkdown
brew cask install quicklook-json
brew cask install qlprettypatch
brew cask install quicklook-csv
brew cask install betterzipql
brew cask install webpquicklook
brew cask install suspicious-package

#Brew Cask Packages
brew cask install alfred
brew cask install coda
brew cask install firefox
brew cask install imagealpha
brew cask install intensify-pro
brew cask install magicprefs
brew cask install skype
brew cask install sublime-text3
brew cask install titanium-studio
brew cask install atom
brew cask install codekit
brew cask install forklift
brew cask install imagemin
brew cask install iterm2
brew cask install mamp
brew cask install spotify
brew cask install synology-cloud-station
brew cask install tower
brew cask install bonjour-browser
brew cask install dropbox
brew cask install google-chrome
brew cask install google-drive
brew cask install google-hangouts
brew cask install imageoptim
brew cask install kitematic
brew cask install sequel-pro
brew cask install steam
brew cask install teamviewer
brew cask install vlc
brew cask install appcleaner
brew cask install caffeine
brew cask install cheatsheet
brew cask install spectacle
brew cask install superduper
brew cask install virtualbox
brew cask install vagrant
brew cask install vagrant-manager
brew cask install xtrafinder
brew cask install transmit

# Remove outdated versions from the cellar.
brew cleanup

# some quick vagrant & composer tasks, I didn't know where else to put in
vagrant box add laravel/homestead
composer global require "laravel/homestead=~2.0"
homestead init

#some npm things
npm install -g acs
npm install -g alloy
npm install -g bower
npm install -g browser-sync
npm install -g browserify
npm install -g connect-livereload
npm install -g cordova
npm install -g express
npm install -g generator-mocha
npm install -g generator-webapp
npm install -g gittio
npm install -g gulp
npm install -g imageoptim-cli
npm install -g ionic
npm install -g ios-sim
npm install -g jshint
npm install -g node-sass
npm install -g ti-inspector
npm install -g titanium
npm install -g yo