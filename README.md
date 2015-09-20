# nop's dots
## About

My dotfiles are probably no use to you, as it is the result of copypasta manufacturing.
Check out my sources, the people that put some real work into it.

####Optimized for
- Ruby
	+ Ruby-Install 
	+ Rubies-Select
- TextMate2
	+ Solarized themes
	+ Fish bundle
	+ Dash bundle
	+ Liquid bundle (Ruby templating engine)
	+ Solarized themes
- TotalTerminal (no, not iTerm2)
	+ Solarized themes
- Fish
	+ Custom theme (based on ione)
	+ Config for use with solarized dark
	+ AutoJump enabled
	+ Rake completions


## Sources
♥
Forked from [Venhecke/dotfiles](https://github.com/Vanhecke/dotfiles)
Base (.osx, Brewfile, .cask, aliases, osx tool settings)
[mathiasbynens/dotfiles](https://github.com/mathiasbynens/dotfiles)
Fish configuration files
[ithinkihaveacat/dotfiles](https://github.com/ithinkihaveacat/dotfiles)
More fish config
[bpinto/oh-my-fish](https://github.com/bpinto/oh-my-fish)
Rubies-Select (also base for my Rubies-Current)
[kvs/rubies-fish](https://github.com/kvs/rubies-fish)
Fish bundle
[l15n/fish-tmbundle](https://github.com/l15n/fish-tmbundle)
Dash bundle
[ram-nadella/Dashmate.tmbundle](https://github.com/ram-nadella/DashMate.tmbundle)
Liquid bundle
[liquid-tmbundle](https://github.com/andrew/liquid-tmbundle)
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
GIT_AUTHOR_NAME="Nami Shah"
GIT_COMMITTER_NAME="$GIT_AUTHOR_NAME"
git config --global user.name "$GIT_AUTHOR_NAME"
GIT_AUTHOR_EMAIL="nami@shahnami.com"
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



