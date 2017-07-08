# Aliases in this file are bash and zsh compatible

# The following determines where .dotfiles is installed.
dotfiles=$HOME/.dotfiles

# export TOMMY_DUNN="$HOME/.dotfiles/secrets"
# Edit hosts file
alias hosts='sudo /etc/hosts atom .'
alias ehosts='sudo vim /etc/hosts'

# Restart window
alias wtf="source ~/.zshrc"

# Flush dns cache
alias cache="sudo discoveryutil udnsflushcaches"

# open up emoji cheat sheet in browser
alias emo="open http://www.emoji-cheat-sheet.com/"

alias searchcask="open https://www.caskroom.github.io/search"
alias chrome="open https://goggle.com"

# Doable specific
alias release='git checkout release && git pull origin release'
alias development='git checkout development && git pull origin development'
alias staging='git checkout staging && git pull origin staging'

alias dd="~/dev/doable"
alias ddocs="~/dev/doableInnovation.github.io"
alias ddf="~/dev/_doable/doable-frontend"
alias ddb="~/dev/_doable/doable-backend"
alias awsl="eval $(aws ecr get-login)"

# Docker
alias default='docker-machine start default && eval $(docker-machine env default) && docker-compose up'

# Other projects
alias ms='cd ~/dev/_projects/tommy/tommyldunn.com'
alias ty='cd ~/dev/tymontague.com'
alias katie='cd ~/dev/_projects/katie'
alias jackie='cd ~/dev/_projects/jackie/jacquelynmaloney.com'
alias dfiles="cd ~/.dotfiles"
alias ea="cd ~/.dotfiles"
alias projects="~/dev/_projects"

# Get operating system
platform='unknown'
unamestr=$(uname)
if [[ $unamestr == 'Linux' ]]; then
  platform='linux'
  elif [[ $unamestr == 'Darwin' ]]; then
  platform='darwin'
fi

# dotfiles support
alias yav='dotfiles vim-add-plugin'
alias ydv='dotfiles vim-delete-plugin'
alias ylv='dotfiles vim-list-plugin'
alias yup='dotfiles update-plugins'
alias yip='dotfiles init-plugins'

# PS
alias psa="ps aux"
alias psg="ps aux | grep "
alias psr='ps aux | grep ruby'

# Moving around
alias cdb='cd -'
alias cls='clear;ls'

# Show human friendly numbers and colors
alias df='df -h'
alias du='du -h -d 2'

if [[ $platform == 'linux' ]]; then
  alias ll='ls -alh --color=auto'
  alias ls='ls --color=auto'
  elif [[ $platform == 'darwin' ]]; then
  alias ll='ls -alGh'
  alias ls='ls -Gh'
fi

# show me files matching "ls grep"
alias lsg='ll | grep'

# Alias Editing
TRAPHUP() {
  source $dotfiles/zsh/aliases.zsh
}

alias ae='vim $dotfiles/zsh/aliases.zsh' # alias edit
alias ar='source $dotfiles/zsh/aliases.zsh'  # alias reload
alias gar="killall -HUP -u \"$USER\" zsh"  # global alias reload

# vim using
mvim --version > /dev/null 2>&1
MACVIM_INSTALLED=$?
if [ $MACVIM_INSTALLED -eq 0 ]; then
  alias vim="mvim -v"
fi

# mimic vim functions
alias :q='exit'

# vimrc editing
alias ve='vim ~/.vimrc'

# zsh profile editing
alias ze='vim ~/.zshrc'

# Git Aliases
alias ginit="git init && git add . && git commit -m init"
alias gs='git status'
alias gstsh='git stash'
alias gst='git stash'
alias gsp='git stash pop'
alias gsa='git stash apply'
alias gsh='git show'
alias gshw='git show'
alias gshow='git show'
alias gi='vim .gitignore'
alias gcm='git ci -m'
alias gcim='git ci -m'
alias gci='git ci'
alias gco='git co'
alias gcp='git cp'
alias ga='git add -A'
alias gap='git add -p'
alias guns='git unstage'
alias gunc='git uncommit'
alias gm='git merge'
alias gms='git merge --squash'
alias gam='git amend --reset-author'
alias grv='git remote -v'
alias grr='git remote rm'
alias grad='git remote add'
alias gr='git rebase'
alias gra='git rebase --abort'
alias ggrc='git rebase --continue'
alias gbi='git rebase --interactive'
alias gl='git l'
alias glg='git l'
alias glog='git l'
alias co='git co'
alias gf='git fetch'
alias gfp='git fetch --prune'
alias gfa='git fetch --all'
alias gfap='git fetch --all --prune'
alias gfch='git fetch'
alias gd='git diff'
alias gb='git b'

# Staged and cached are the same thing
alias gdc='git diff --cached -w'
alias gds='git diff --staged -w'
alias gpub='grb publish'
alias gtr='grb track'
alias gpl='git pull'
alias gplr='git pull --rebase'
alias gps='git push'
alias gpsh='git push -u origin `git rev-parse --abbrev-ref HEAD`'
alias gnb='git nb' # new branch aka checkout -b
alias grs='git reset'
alias grsh='git reset --hard'
alias gcln='git clean'
alias gclndf='git clean -df'
alias gclndfx='git clean -dfx'
alias gsm='git submodule'
alias gsmi='git submodule init'
alias gsmu='git submodule update'
alias gt='git t'
alias gbg='git bisect good'
alias gbb='git bisect bad'
alias gdmb='git branch --merged | grep -v "\*" | xargs -n 1 git branch -d'

# Common shell functions
alias tf='tail -f'
alias l='less'
alias lh='ls -alt | head' # see the last modified files
alias screen='TERM=screen screen'
alias cl='clear'

# Zippin
alias gz='tar -zcvf'

# Ruby
alias c='rails c' # Rails 3
alias cod='script/console --debugger'

# If you want your thin to listen on a port for local VM development
# export VM_IP=10.0.0.1 <-- your vm ip
alias ts='thin start -a ${VM_IP:-127.0.0.1}'
alias tfdl='tail -f log/development.log'
alias tftl='tail -f log/test.log'

alias ka9='killall -9'
alias k9='kill -9'

# Gem install
alias gemi='gem install --no-ri --no-rdoc'


# Forward port 80 to 3000
alias portforward='sudo ipfw add 1000 forward 127.0.0.1,3000 ip from any to any 80 in'

alias rdm='rake db:migrate'
alias rdmr='rake db:migrate:redo'


# Rspec
alias rs='rspec spec'
alias sr='spring rspec'
alias src='spring rails c'
alias srgm='spring rails g migration'
alias srdm='spring rake db:migrate'
alias srdt='spring rake db:migrate'
alias srdmt='spring rake db:migrate db:test:prepare'


alias grb='git recent-branches'

# Finder
alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'

alias dbtp='spring rake db:test:prepare'
alias dbm='spring rake db:migrate'
alias dbmr='spring rake db:migrate:redo'
alias dbmd='spring rake db:migrate:down'
alias dbmu='spring rake db:migrate:up'

# Homebrew
alias brewu='brew update && brew upgrade && brew cleanup && brew prune && brew doctor'
