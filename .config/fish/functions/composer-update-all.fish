function composer-update-all
  # do all work in sub-func so ctrl-c can be handled correctly
  _composer-update-all $argv

  _composer-update-all:restore composer.json composer.lock $status
end

function _composer-update-all
  set pkgs
  for a in $argv
    set p (string split : $a)
    set -a pkgs $p[1]
  end

  set others
  set all (lando composer show -DN --no-dev)
  set vers (lando composer show)
  for p in $all
    set p (string trim $p)
    if not contains $p $pkgs
      # xxx: dont pin for now
      # temporarily adjust pkg version specs to ensure pkgs don't get downgraded
      #set -a others $p:\>=(string split -nf 2 ' ' (printf %s\n $vers | grep "^$p "))
      set -a others $p
    end
  end

  _composer-update-all:backup composer.json composer.lock

  echo pkgs: $argv $others
  lando composer require -w $argv $others

  # xxx: dont pin for now
  #if test $status -eq 0
  if false
    # pin pkgs to chosen major version
    set vers (lando composer show)
    set nvers
    for o in $others
      set p (string split : $o)[1]
      set -a nvers $p[1]:^(string split -nf 2 ' ' (printf %s\n $vers | grep $p))
    end
    lando composer require $nvers
  end
end

function _composer-update-all:backup
  for f in $argv
    if test -f $f
      cp $f (path basename -E $f)-orig(path extension $f)
    end
  end
end

function _composer-update-all:restore
  for f in $argv[1..-2]
    set o (path basename -E $f)-orig(path extension $f)
    if test -f $o
      if test $argv[-1] -ne 0
        mv $o $f
      else
        rm $o
      end
    end
  end
end
