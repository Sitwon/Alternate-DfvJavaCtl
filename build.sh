#!/bin/bash
set -e # Exit on errors
cd src/
for i in jp/co/antenna/DfvJavaCtl/*.java
do
	javac -source 1.4 -target 1.4 $i
done
jar cf ../DfvJavaCtl_1.4.jar jp/co/antenna/DfvJavaCtl/*.class
rm jp/co/antenna/DfvJavaCtl/*.class
