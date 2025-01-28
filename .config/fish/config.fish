brew shellenv | source

/opt/homebrew/opt/mise/bin/mise activate fish | source

if status is-interactive
  #cd ~/code

  if [ -z "$TMUX" ]
    tmux has > /dev/null
    if [ $status -eq 0 ]; tmux a
    else; tmux
    end
  end
end
