# This is ageneric batch file to start a command (bat file) in the YATC system. It searches for a batch file with the right name
# and then executes it.  

# Copyright © Nictiz
#     
# This program is free software; you can redistribute it and/or modify it under the terms of the
# GNU Lesser General Public License as published by the Free Software Foundation; either version
# 2.1 of the License, or (at your option) any later version.
# 
# This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY;
# without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
# See the GNU Lesser General Public License for more details.
# 
# The full text of the license is available at http://www.gnu.org/copyleft/lesser.html

if [ "$1" = "-help" ] || [ "$1" = "" ]; then
  echo "Runs a YATC command"
  echo "Usage: `basename $0` [subcommand] [subcommand-parameters-flags]"
  exit 0
fi

BASEDIR=$(dirname "$0")/../..
COMMAND=$1
BATCHFILE=`find $BASEDIR -name "$COMMAND.sh"`
BATCHFILECOUNT=`echo "$BATCHFILE" | wc -l`

if [ "$BATCHFILE" != "" ] && [ $BATCHFILECOUNT -eq 1 ]
then
    $BATCHFILE $2 $3 $4 $5 $6 $7 $8 $9 
else
    echo "YATC command not found (or multiple times): $COMMAND"
    exit 1
fi
exit 0

