#!/usr/bin/env bash

if [[ ! $(which brew) ]]; then
  echo "Installing Brew.."
  /usr/bin/env bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

open -g -j -a iTerm 2>/dev/null
if [[ $? -eq 1 ]]; then
  brew install --cask iterm2   
fi

# echo "Installing Brew bundle.."
brew bundle install --file Brewfile

echo "Removing existing vim dotfiles"
# Clean up old unnecessary files or symlinks
rm -f ${HOME}/.vimrc ${HOME}/.gvimrc ${HOME}/.vimrc.bundles; rm -rf ${HOME}/.vim

echo "Cloning vim_dotfiles"
# Clone directly into ~/.vim
git clone https://github.com/akonkol/vim_dotfiles.git ${HOME}/.vim

echo "Installing vim plugins"
/usr/bin/env bash -c "${HOME}/.vim/activate.sh"

echo "Symlinking custom configs.."
ln -s -F ${HOME}/.vim/tmux_example.conf ${HOME}/.tmux.conf


mkdir -p ${HOME}/.zsh/plugins
cp kubernetes-context.bash ${HOME}/.zsh/plugins/.

cp .zshrc ${HOME}/.

echo "Done.."
