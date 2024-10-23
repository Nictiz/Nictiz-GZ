# Script that starts the processing of the general engine.

# This script is meant to be called from a shell script in the actual component's bin directory.
# First argument must always be the absolute filename of the *originating* shell script: $(realpath $0)
# Example call: 
#   $(dirname "$0")/../../../YATC-shared/general-engine/bin/process.sh $(realpath $0) $*


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

SCRIPT=$1
shift

BASEDIR=$(realpath $(dirname "$0"))
YATCBASEDIR=$BASEDIR/../../..
CWSCRIPT=$BASEDIR/../xpl/process.xpl

"$YATCBASEDIR/YATC-tools/bin/morgana.sh" "$CWSCRIPT" "-option:commandLine=$*" "-option:originatingBatchScript=$SCRIPT"
exit 0