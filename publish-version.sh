#!/bin/sh

VERSION="2.0-SNAPSHOT"
REPO="/home/sluzba/.m2/repository/"
PACKAGE="si/vsrs/cif/sed/"



cp -r $REPO/$PACKAGE/Laurentius-commons/$VERSION $PACKAGE/Laurentius-commons/
cp -r $REPO/$PACKAGE/Laurentius-lce/$VERSION $PACKAGE/Laurentius-lce/
cp -r $REPO/$PACKAGE/Laurentius-msh-xsd/$VERSION $PACKAGE/Laurentius-msh-xsd/
cp -r $REPO/$PACKAGE/Laurentius-plugin-interfaces/$VERSION $PACKAGE/Laurentius-plugin-interfaces/
cp -r $REPO/$PACKAGE/Laurentius-viz/$VERSION $PACKAGE/Laurentius-viz/
cp -r $REPO/$PACKAGE/Laurentius-wsdl/$VERSION $PACKAGE/Laurentius-wsdl/


