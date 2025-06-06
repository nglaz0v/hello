#!/bin/sh

# openbsd 4.9
# gcc 4.2.1
# openjdk 1.7.0
JAVA_HOME=$(readlink -f /usr/bin/javac | sed "s:bin/javac::")
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:.
javac HelloWorld.java
# javah HelloWorld
javac -h . HelloWorld.java
gcc -I${JAVA_HOME}/include -I${JAVA_HOME}/include/linux -shared libHelloWorld.c -o libHelloWorld.so
java HelloWorld
