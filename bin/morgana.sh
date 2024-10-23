# This shell script starts Morgana within the YATC context. 
# It sets the CLASSPATH in accordance with how the YATC-tools repository has its files layed out on disk.

CURRENT_SCRIPT_DIR=$(dirname $(realpath $0))
DATADIR=$CURRENT_SCRIPT_DIR/../data
MORGANADIR=$CURRENT_SCRIPT_DIR/../morgana
SAXONDIR=$CURRENT_SCRIPT_DIR/../saxon

# All related jars are expected to be in $MORGANA_LIB. For externals jars: Add them to $CLASSPATH
PROG_PATH="$MORGANADIR/MorganaXProc-IIIse.jar"
MORGANALIB_PATH="$MORGANADIR/MorganaXProc-IIIse_lib/*"
SAXONLIB_PATH="$SAXONDIR/*"

CLASSPATH="$MORGANALIB_PATH:$SAXONLIB_PATH:$PROG_PATH"

# Settings for JAVA_AGENT: Only for Java 8 we have to use -javaagent.
JAVA_VER=$(java -version 2>&1 | sed -n ';s/.* version "\(.*\)\.\(.*\)\..*".*/\1\2/p;')

JAVA_AGENT=""
if [ $JAVA_VER = "18" ]
then
	JAVA_AGENT=-javaagent:$MORGANADIR/MorganaXProc-IIIse_lib/quasar-core-0.7.9.jar
fi

XSLTCONNECTOR=saxon12-3

java $JAVA_AGENT -cp "$CLASSPATH" "com.xml_project.morganaxproc3.XProcEngine" "-config=$DATADIR/morgana-config.xml" "$@"