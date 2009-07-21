#!/bin/bash
set -e # Exit on errors
cd src/
for i in jp/co/antenna/DfvJavaCtl/*.java
do
	/home/adam/Antenna\ House/workbench/java14/j2sdk1.4.2_19/bin/javac -source 1.4 -target 1.4 $i
done
/home/adam/Antenna\ House/workbench/java14/j2sdk1.4.2_19/bin/jar cf ../DfvJavaCtl_1.4.jar jp/co/antenna/DfvJavaCtl/*.class
rm jp/co/antenna/DfvJavaCtl/*.class
