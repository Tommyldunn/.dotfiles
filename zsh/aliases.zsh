#
# Aliases in this file are bash and zsh compatible
#

#
# Edit hosts file (vim & atom)
#
alias ehf='atom /etc/hosts'
alias vehf='vim /etc/hosts'

#
# Edit wp config
#
alias ehwpc='atom /Users/tommy/Sites/weremagnetic.com/wp-config.php'

#
# Restart window
#
alias wtf='source ~/.zshrc'

#
# Flush dns cache
#
alias fcache='sudo discoveryutil udnsflushcaches'

#
# Open up emoji cheat sheet in browser
#
alias emo='open http://www.emoji-cheat-sheet.com/'

#
# Open angular-cli
#
alias aclid='open https://github.com/angular/angular-cli'
alias searchcask='open https://www.caskroom.github.io/search'

#
# Switching between main base branches
#
alias production='git checkout production && git pull origin production'
alias development='git checkout development && git pull origin development'
alias staging='git checkout staging && git pull origin staging'
alias gcmc='git add . && git commit -m "[chore:format] linting on save"'

#
# Start Docker
#
alias default='docker-machine start default && eval $(docker-machine env default) && docker-compose up'

#
# Login to AWS
#
alias awsl='eval $(aws ecr get-login)'

#
# Other projects & moving around my dir's
#
alias dev='cd ~/_dev' # cd into root dev directory
alias projects='cd ~/_dev/_projects' # cd int

#
# My Projects
#
alias ms='cd ~/_dev/_projects/tommyldunn' # cd into tommy.com directory
alias dev:ms='cd ~/_dev/_projects/tommyldunn && atom .' # cd into tommyldunn.com directory and open atom
alias atm='atom .'

#
# Magnetic directory support
#
alias mag:sites:dev="cd ~/sites/weremagnetic.com/wp-content/themes/sage-master && atom ." # start deving magnetic.com
alias mag:sites="cd ~/sites/weremagnetic.com/wp-content/themes/sage-master" # cd into sites/weremagnetic.com (php apps)
alias mag:css="cd ~/_dev/_magnetic/were-magnetic-styles" # cd into mag styles directory
alias mag:app="cd ~/_dev/_magnetic/magnetic-app" # cd into mag app directory
alias mag:dev="dev && cd _magnetic" # cd into root mag directory (non php apps)

#
# Don't change. The following determines where YADR is installed.
#
yadr=$HOME/.yadr

# Get operating system
platform='unknown'
unamestr=$(uname)
if [[ $unamestr == 'Linux' ]]; then
  platform='linux'
elif [[ $unamestr == 'Darwin' ]]; then
  platform='darwin'
fi

# YADR support
alias yav='yadr vim-add-plugin'
alias ydv='yadr vim-delete-plugin'
alias ylv='yadr vim-list-plugin'
alias yup='yadr update-plugins'
alias yip='yadr init-plugins'

# Dotfiles support
alias veda="vim ~/.yadr/zsh/aliases.zsh" # edit aliases with vim
alias eda="atom ~/.yadr/zsh/aliases.zsh" # edit aliases
alias dfd="cd ~/.yadr" # cd to dotfiles directory
alias odf="~/.yadr && atom ." # cd and open dotfiles directory

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
  source $yadr/zsh/aliases.zsh
}

alias ae='vim $yadr/zsh/aliases.zsh' #alias edit
alias ar='source $yadr/zsh/aliases.zsh'  #alias reload
alias gar="killall -HUP -u \"$USER\" zsh"  #global alias reload

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
alias less='less -r'
alias tf='tail -f'
alias l='less'
alias lh='ls -alt | head' # see the last modified files
alias screen='TERM=screen screen'
alias cl='clear'

# Zippin
alias gz='tar -zcvf'

# Ruby
alias c='rails c' # Rails 3
alias co='script/console' # Rails 2
alias cod='script/console --debugger'

#If you want your thin to listen on a port for local VM development
#export VM_IP=10.0.0.1 <-- your vm ip
alias tfdl='tail -f log/development.log'
alias tftl='tail -f log/test.log'

alias ka9='killall -9'
alias k9='kill -9'

# Gem install
alias sgi='sudo gem install --no-ri --no-rdoc'

# Forward port 80 to 3000
alias portforward='sudo ipfw add 1000 forward 127.0.0.1,3000 ip from any to any 80 in'

alias rdm='rake db:migrate'
alias rdmr='rake db:migrate:redo'

alias hpr='hub pull-request'
alias grb='git recent-branches'

# Finder
alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'

# Homebrew
alias brewu='brew update && brew upgrade && brew cleanup && brew doctor'
