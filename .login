powerline-daemon -q

tmux has -t main >& /dev/null
if ($? == 1) then
	tmux new -ds main
	foreach i (`seq 1 9`)
		tmux new-window -d
	end
	tmux select-window -t 1
endif
