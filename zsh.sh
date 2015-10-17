#!/bin/zsh

if [ ! -d "${ZDOTDIR:-$HOME}/.zprezto" ]; then
  git clone --recursive git@github.com:sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
fi

setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  cp "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done

echo "Setting ZSH to be the default shell, enter your password"
chsh -s /bin/zsh

cd ${ZDOTDIR:-$HOME}/.zprezto
git pull && git submodule update --init --recursive
cd -

