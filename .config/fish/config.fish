/opt/homebrew/opt/mise/bin/mise activate fish | source

tmux has -t main &> /dev/null
if [ $status -eq 1 ]
  tmux new -ds main
  for i in (seq 1 9)
    tmux new-window -d
  end
  tmux select-window -t 1
end

if status is-interactive
  cd ~/code

  if [ -n "$TMUX" ]
    tmux a
  end
end
