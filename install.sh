#!/bin/sh  -x

JAR=xsd2thrift-1.0.one-jar.jar

if [ -f target/$JAR ]; then
	cp target/$JAR /usr/local/lib
	cp xsd2idl /usr/local/bin
	chmod 755 /usr/local/bin/xsd2idl
	chmod 644 /usr/local/lib/$JAR
	exit 0
fi

echo "target/$JAR doesnt exist (mvn install)"
exit 255
