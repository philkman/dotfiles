if [ -f ~/.bashrc ]; then
  source ~/.bashrc
fi
eval "$(rbenv init -)"

# added by Anaconda2 4.1.1 installer
export PATH="/Users/kman/anaconda/bin:$PATH"
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi
