setenv LANG "en_AU.utf8"
setenv PATH ~/.rbenv/shims:/usr/local/bin:/usr/local/sbin:/usr/X11/bin:/usr/X11/sbin:/usr/bin:/usr/sbin:/bin:/sbin
setenv EDITOR vim
setenv PAGER more

bindkey -v

eval `direnv hook tcsh`

powerline-daemon -q

set pypkgpath=`python -c "import site; print(site.getsitepackages()[0])"`
source $pypkgpath/powerline/bindings/tcsh/powerline.tcsh

cd ~/code

if ! $?DISPLAY then
	startx
else
	tmux has -t main >& /dev/null
	if $? == 1 then
		tmux new -ds main
		foreach i (`seq 1 9`)
			tmux new-window -d
		end
		tmux select-window -t 1
	endif

	if ! $?TMUX tmux a
endif
