# -*- sh -*-

# tool config

set -x GREP_OPTIONS "--exclude-dir=.svn --exclude-dir=.git --binary-files=without-match"
set -x LESS "-XMcifR"
set -x TZ "Europe/Brussels"

# personal config

set -x GITROOT "git@github.com:nopc0de"
set -x GIT_COMPOSER_STALE "warn"
set -X EDITOR "mate"

# fish config

# http://fishshell.com/docs/2.1/#variables-special
set fish_greeting

# https://github.com/fish-shell/fish-shell/blob/master/share/functions/__fish_git_prompt.fish
set -g __fish_git_prompt_showupstream "auto"
set -g __fish_git_prompt_showstashstate "1"
set -g __fish_git_prompt_showdirtystate "1"

. $HOME/.config/fish/solarized.fish

mkdir -p ~/.rubies
. $HOME/.config/fish/rubies.fish


. $HOME/.config/fish/extra_completions.fish
. $HOME/.config/fish/extra_functions.fish