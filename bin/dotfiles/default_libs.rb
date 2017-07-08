#!/usr/bin/env ruby

Dir[File.join(File.dirname(__FILE__), 'lib/**/lib')].each { |dir| $LOAD_PATH << dir }
require 'git-style-binary/command'

$dotfiles = File.join(ENV['HOME'], '.dotfiles')
