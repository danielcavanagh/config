set prompt = "> "

bindkey -v

setenv LANG "en_AU.UTF-8"
setenv EDITOR vim
setenv PAGER 'more -r'

setenv GEM_HOME "$HOME/.gem"

setenv GITLAB_API_ENDPOINT "https://gitlab.com/api/v4"
setenv GITLAB_API_AUTH_TOKEN "DKhtKkdudCyrJ8qe_X9S"
setenv GITLAB_PROJECT_ID "6161337"

setenv PATH /usr/local/opt/ruby/bin:/Applications/MAMP/bin/php/php7.2.8/bin:/usr/local/bin:/usr/local/sbin:/Library/Internet\ Plug-Ins/JavaAppletPlugin.plugin/Contents/Home/bin:/bin:/sbin:/usr/bin:/usr/sbin:/usr/X11/bin:/usr/X11/sbin:/usr/local/lib/ruby/gems/2.6.0/bin:./vendor/bin
setenv MANPATH /usr/local/opt/erlang/lib/erlang/man:/usr/local/share/man:/usr/share/man

# check for gems and add the bin path to PATH
set bin=`where gem`
if ("$bin" != '') setenv PATH "$PATH":"`gem env | grep 'EXE.*DIR' | sed 's/^.*: //'`"

# check for npm and add the bin path to PATH
set bin=`where npm`
if ("$bin" != '') setenv PATH "`npm bin -g |& head -n 1`":"$PATH"

# check for composer and add the bin path to PATH
set bin=`where composer`
if ("$bin" != '') setenv PATH "$PATH":"`composer -g config home`/`composer -g config bin-dir`"

eval `direnv hook tcsh`

# Platform.sh CLI configuration
setenv PATH "$PATH":"$HOME/.platformsh/bin"
# if ( test -f "$HOME/.platformsh/shell-config.rc" ) . "$HOME/.platformsh/shell-config.rc"

docker-machine start default >& /dev/null
eval `docker-machine env default`

cd ~/code

tmux has -t main >& /dev/null
if $? == 1 then
  tmux new -ds main
  foreach i (`seq 1 9`)
    tmux new-window -d
  end
  tmux select-window -t 1
endif

if ! $?TMUX tmux a
