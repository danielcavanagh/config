setenv LANG "en_AU.utf8"
setenv PATH $PATH\:/sbin\:/usr/sbin\:/usr/local/bin\:/usr/X11/bin\:/usr/X11/sbin
setenv EDITOR vim
setenv PAGER more

source /usr/lib64/python2.7/site-packages/powerline/bindings/tcsh/powerline.tcsh

cd ~/code

if ! $?TMUX tmux a
