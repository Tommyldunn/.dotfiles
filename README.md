# .dotfiles

**Shoutout to Yan Pritzker** which this repo is originally forked from. [Yan Pritzker's dotfiles](https://github.com/skwp/dotfiles).

____
![Imgur](https://i.imgur.com/dQMVXlT.png)

## Installation

```bash
sh -c "`curl -fsSL https://raw.githubusercontent.com/tommydunn/.dotfiles/master/install.sh`"
```

**Note:** dotfiles will automatically install all of its subcomponents. If you want to be asked
about each one, use:

```bash
sh -c "`curl -fsSL https://raw.githubusercontent.com/tommydunn/.dotfiles/master/install.sh`" -s ask
```

#### Install iTerm Solarized Colors
dotfiles will install Solarized colorschemes into your iTerm. Go to Profiles => Colors => Load Presets to pick Solarized Dark.


### Upgrading

Upgrading is easy.

```bash
cd ~/.dotfiles
git pull --rebase
rake update
```

## Why these Dotfiles?

**An opinionated dotfile repo that make my daily life easier**

  * The best bits of all the top dotfile repos, vim and zsh plugins curated in one place, into a simple and cohesive way of working.
  * More than 90 vim plugins, all under one roof, working together, each plugin researched and configured to be at its best, often with better shortcut keys.
  * Many zsh plugins, starting with the wonderful Prezto base, and adding a few niceties on top.
  * All things are vimized: irb, postgres command line, etc.
