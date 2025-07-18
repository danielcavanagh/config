function composer-update-all
  # do all work in sub-func so ctrl-c can be handled correctly
  _composer-update-all $argv

  _composer-update-all:restore composer.json composer.lock $status
end

function _composer-update-all
  echo 'warning: using local composer to avoid lando composer escape code bug'
  set all (composer show -DN --no-dev)
  set vers_str (composer show)
  set vers
  for p in $all; set -a vers (string split -nf 2 ' ' (printf %s\n $vers_str | grep "^$p ")); end

  set pkgs
  set pkgs_ver
  set unvers
  for a in $argv
    set p (string split : $a)
    set -a pkgs $p[1]

    # if no version spec, add one that will allow upgrade of the major version
    set i (contains -i $p[1] $all)
    if test -z "$p[2]"; set -a unvers $p[1]; end
    if test -z "$p[2]" -a -n "$i"; set p[2] \>=$vers[$i]; end
    if test -z "$p[2]"; set p[2] '*'; end
    set -a pkgs_ver $p[1]:$p[2]
  end

  set others
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

  echo pkgs: $pkgs_ver $others
  lando composer require -w $pkgs_ver $others

  if test $status -eq 0
    # pin pkgs to chosen major version
    set vers (composer show)
    set nvers

    for p in $unvers
      set -a nvers $p:^(string split -nf 2 ' ' (printf %s\n $vers | grep $p))
    end

    # xxx: dont pin others for now
    if false
      for o in $others
        set p (string split : $o)[1]
        set -a nvers $p[1]:^(string split -nf 2 ' ' (printf %s\n $vers | grep $p[1]))
      end
    end

    if test (count $nvers) -ne 0; lando composer require $nvers; end
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
