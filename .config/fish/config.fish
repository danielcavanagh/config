if type -q brew
  brew shellenv | source

  $HOMEBREW_PREFIX/opt/mise/bin/mise activate fish | source
else
  if type -q nvm; nvm use -s latest; end
  if [ -x ~/.local/bin/mise ]; ~/.local/bin/mise activate fish | source; end
end

if status is-interactive
  if [ (pwd) = /mnt/c/Users/dpcavan ]; cd ~; end

  if [ -z "$TMUX" ]
    tmux has > /dev/null
    if [ $status -eq 0 ]; tmux a
    else; tmux
    end
  end
end
