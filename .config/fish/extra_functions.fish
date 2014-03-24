#
# Copy-pasta from oh-my-fish
#

#
# Autojump
#
function j
  cd (command autojump $argv)
end

#
# Localhost opening in browser
#
# Usage:
#
# open a commonly used port with just the port number
# $ 3000
#
# open an arbitrary port using the `lh` command
# $ lh 3001

## Functions
function _open-installed
  which open >/dev/null ^&1
end

## Main program
function lh
  if _open-installed
    if [ (count $argv) -lt 1 ]
        echo "You need to specify a port to open"
        return 1
    end
    command open http://localhost:$argv
  else
    echo 'Requires open (MacOS only) to be installed'
  end
end

set -l common_localhost_ports 3000 4000 5000 6000 7000 8000 8001 9000 8080

for port in $common_localhost_ports
  eval "function $port; lh $port; end"
end