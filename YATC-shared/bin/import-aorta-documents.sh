# This script runs ../support/import-aorta-documents.xpl 
# This will import a specified list of documents from AORTA into YATC
#
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
  echo "Imports a set of files from AORTA into YATC."
  echo "Meant for developers of YATC software only."
  echo "Usage: `basename $0`"
  exit 0
fi

BASEDIR=$(dirname "$0")
TOOLSBINDIR=$BASEDIR/../../YATC-tools/bin

"$TOOLSBINDIR/morgana.sh" "$BASEDIR/../xpl/import-aorta-documents.xpl" "-input:source=$1"
exit 0