setenv LANG "en_AU.utf8"
setenv PATH $HOME/.config/composer/vendor/bin:$HOME/.rbenv/shims:$HOME/.config/yarn/global/node_modules/.bin:$HOME/.go/bin:/usr/local/bin:/usr/local/sbin:/usr/X11/bin:/usr/X11/sbin:/usr/bin:/usr/sbin:/bin:/sbin:/usr/bin/vendor_perl
setenv EDITOR vim
setenv PAGER more
setenv GOPATH ~/.go

bindkey -v

eval `direnv hook tcsh`

#powerline-daemon -q
#set pypkgpath=`python -c "import site; print(site.getsitepackages()[0])"`
#source $pypkgpath/powerline/bindings/tcsh/powerline.tcsh

alias dokku 'bash $HOME/code/dokku/contrib/dokku_client.sh'

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
