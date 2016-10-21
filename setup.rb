#! /usr/bin/ruby

require 'open3'

install = lambda do |cmd|
  Open3.popen3(cmd) do |stdin, stdout, stderr, wait_thr|
    stdout.each { |line| puts line }
    stderr.each { |line| puts line }
  end
end

dependencies = [
  "/usr/bin/ruby -e \"$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)\"", #homebrew
  "brew tap caskroom/cask", #homebrew cask
  "brew install wget", #wget
  "brew install git", #git
  "brew cask install iterm2", #iterm
  "brew install rbenv ruby-build", #rbenv
  "brew cask install macvim", #macvim
  "curl -L https://bit.ly/janus-bootstrap | bash", #janus
  "git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim", #vundle
  "echo \"\nalias vim='/usr/local/bin/mvim -v'\nalias vi='/usr/local/bin/mvim -v'\n\" >> ~/.zshrc", #vim shell aliases
  "curl -sSf https://static.rust-lang.org/rustup.sh | sh", #rust
  "wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.32.0/install.sh | bash", #nvm
  "brew install jenv", #jenv
  "brew cask install java", #java
  "brew install scala", #scala
  "brew install sbt", #sbt
  "brew cask install intellij-idea", #intellij
  "brew cask install sublime-text", #sublime text
  "brew cask install slack", #slack
  "brew cask install firefox", #firefox
  "brew cask install anaconda", #anaconda
  "echo \"\nexport PATH=~/anaconda3/bin:~/.rbenv/bin:$PATH\n\"", #add anaconda and rbenv path
  "brew install mysql", #mysql
  "echo \"\neval \"$(rbenv init -)\"\neval \"$(jenv init -)\"\" >> ~/.zshrc", #initialize rbenv and jenv
  "sh -c \"$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)\"", #oh-my-zsh
]

dependencies.each(&install)

