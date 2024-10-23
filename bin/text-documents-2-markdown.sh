# This script runs ../xpl/text-documents-2-markdown.xpl and with that converts all special text documents 
# in the YATC repositories into Markdown. Meant for developers! 

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

if [ "$1" = "-help" ]; then
  echo "Converts all special text documents into Markdown format for all YATC repositories."
  echo "Meant for developers of YATC software/documentation only."
  echo "Usage: `basename $0`"
  exit 0
fi

BASEDIR=$(dirname "$0")
TOOLSBINDIR=$BASEDIR/../../YATC-tools/bin

"$TOOLSBINDIR/morgana.sh" "$BASEDIR/../xpl/text-documents-2-markdown.xpl"
exit 0