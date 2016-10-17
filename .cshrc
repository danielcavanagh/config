setenv LANG "en_AU.utf8"
setenv PATH $PATH\:/sbin\:/usr/sbin\:/usr/local/bin\:/usr/X11/bin\:/usr/X11/sbin
setenv EDITOR vim
setenv PAGER more

bindkey -v

eval `direnv hook tcsh`

powerline-daemon -q

source /usr/lib64/python2.7/site-packages/powerline/bindings/tcsh/powerline.tcsh

cd ~/code

tmux has -t main >& /dev/null
if ($? == 1) then
	tmux new -ds main
	foreach i (`seq 1 9`)
		tmux new-window -d
	end
	tmux select-window -t 1
endif

if ! $?TMUX tmux a
