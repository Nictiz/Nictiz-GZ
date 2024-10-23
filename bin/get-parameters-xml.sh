# This script returns the parameters XML as computed by the yatcs:get-combined-parameters() function
# in ../xslmod/yatc-parameters.mod.xsl. What it returns depends on from where it is called!

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
  echo "Returns the full parameters XML (<parameters> element) for the YATC parameters."
  echo "The outcome depends on the location from where it is invoked."
  echo "Usage: `basename $0`"
  exit 0
fi

BASEDIR=$(dirname "$0")
TOOLSBINDIR=$BASEDIR/../../YATC-tools/bin

"$TOOLSBINDIR/saxon.sh" "-s:$BASEDIR/../data/dummy.xml" "-xsl:$BASEDIR/../xsl/get-parameters-xml.xsl" "staticBaseUri=$PWD"
exit 0