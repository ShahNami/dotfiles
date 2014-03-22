# nop's dots

## Credits
### This is the result off shameless copypasta manufacturing.

Forked off 
[mathiasbynens/dotfiles](https://github.com/mathiasbynens/dotfiles)!

## Installation


### Using Git and the bootstrap script
Install

```bash
git clone https://github.com/mathiasbynens/dotfiles.git && cd dotfiles && source bootstrap.sh
```

Update

```bash
source bootstrap.sh
```

Update without confirmations

```bash
set -- -f; source bootstrap.sh
```


### Add custom stuff before running bootstrap.sh 

Add your own settings through the .extra file.

For example

```bash
GIT_AUTHOR_NAME="Joris Vanhecke"
GIT_COMMITTER_NAME="$GIT_AUTHOR_NAME"
git config --global user.name "$GIT_AUTHOR_NAME"
GIT_AUTHOR_EMAIL="joris@jorisvanhecke.be"
GIT_COMMITTER_EMAIL="$GIT_AUTHOR_EMAIL"
git config --global user.email "$GIT_AUTHOR_EMAIL"
#FTP&SSH connection aliases
#...
```

### Sensible OS X defaults

When setting up a new Mac, you may want to set some sensible OS X defaults:

```bash
./.osx
```

### Install Homebrew formulae

When setting up a new Mac, you may want to install some common [Homebrew](http://brew.sh/) formulae (after installing Homebrew, of course):

```bash
brew bundle ~/Brewfile
```

### Install native apps with `brew cask`

You could also install native apps with [`brew cask`](https://github.com/phinze/homebrew-cask):

```bash
./.cask
```



