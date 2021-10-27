#!/usr/bin/ruby

def run_cmd(cmd)
  puts
  puts cmd
  system cmd
  puts "Finished: #{cmd}"
end

# install Vundle
if FileTest.exists?('~/.vim/bundle/Vundle.vim')
  puts 'Vundle already installed'
else
  puts 'installing Vundle...'
  `git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim`
end


# install brew
brew_installed = system "which brew"
unless brew_installed
  system 'ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"'
end

# install nvm
nvm_installed = system "which nvm"
unless nvm_installed
  system 'curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash'
end

# update brew
cmds = [ 'update',
         'doctor',
       ]

cmds.each do |cmd|
  run_cmd "brew #{cmd}"
end

# install kegs
kegs = [
         'git',
         'openssl',
         'vim',
         'nvim',
         'tmux',
         # 'reattach-to-user-namespace',
         'the_silver_searcher',
         'zsh',
         'ctags',
         'caskroom/cask/brew-cask',
         'gpg',
         'hub',
         'asdf',
         'chruby',
         'imagemagick',
         'ghostscript',
         'ansible',
         'postgres',
         'yarn',
       ]

kegs.each do |keg|
  run_cmd "brew install #{keg}"
end


# Install Casks
casks = [ 'caffeine',
          'virtualbox',
          # 'vagrant',
          'dropbox',
          # 'skype',
          'tunnelblick',
          'whatsapp',
          'slack',
          'iterm2',
        ]

casks.each do |cask|
  if cask == 'dropbox' && File.exist?('/Applications/Dropbox.app')
    puts; puts "dropbox already installed."
    next
  end
  run_cmd "brew cask install #{cask}"
end

puts
puts "Finished brewing"
puts

puts "Get asdf pluglins"
%w[
  nodejs
  ruby
].each { |pkg| run_cmd "asdf plugin add #{pkg}" }
puts "change shell to zsh with `chsh -s /bin/zsh`"
