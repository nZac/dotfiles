
if test ! $(which java)
then
    export JAVA_HOME=$(/usr/libexec/java_home)
fi

