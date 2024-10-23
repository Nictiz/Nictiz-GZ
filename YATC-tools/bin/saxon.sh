# This shell script starts Saxon within the YATC context. 

CURRENT_SCRIPT=$0
#CURRENT_SCRIPT="$(readlink -f "$0")"  #resolves symlinks on unix based systems (Does not work on BSD systems like MacOS)

SAXON_HOME=$(dirname $CURRENT_SCRIPT)/../saxon

java -jar $SAXON_HOME/saxon.jar "$@"
