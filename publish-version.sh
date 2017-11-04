#!/bin/bash

VERSION="2.0-SNAPSHOT"
REPO="/home/sluzba/.m2/repository/"
PACKAGE="si/vsrs/cif/sed/"

LIBRARIES=(Laurentius-commons Laurentius-lce Laurentius-msh-xsd Laurentius-plugin-interfaces Laurentius-viz Laurentius-wsdl)

rm -rf si

for lib in ${LIBRARIES[@]}; do
	mkdir -p $PACKAGE/${lib}/
	cp -r $REPO/$PACKAGE/${lib}/$VERSION/${lib}-$VERSION.jar $PACKAGE/${lib}/
	sha256sum -b "$PACKAGE/${lib}/${lib}-$VERSION.jar"  | awk '{print $1}' >> ""$PACKAGE/${lib}/${lib}-$VERSION.jar".sha256"
done


#cp -r $REPO/$PACKAGE/Laurentius-commons/$VERSION/Laurentius-commons-$VERSION.jar $PACKAGE/Laurentius-commons/
#sha256sum  "$PACKAGE/Laurentius-commons/Laurentius-commons-$VERSION.jar" >> "Laurentius-commons-$VERSION.jar.sha256"
#cp -r $REPO/$PACKAGE/Laurentius-lce/$VERSION $PACKAGE/Laurentius-lce/
#cp -r $REPO/$PACKAGE/Laurentius-msh-xsd/$VERSION $PACKAGE/Laurentius-msh-xsd/
#cp -r $REPO/$PACKAGE/Laurentius-plugin-interfaces/$VERSION $PACKAGE/Laurentius-plugin-interfaces/
#cp -r $REPO/$PACKAGE/Laurentius-viz/$VERSION $PACKAGE/Laurentius-viz/
#cp -r $REPO/$PACKAGE/Laurentius-wsdl/$VERSION $PACKAGE/Laurentius-wsdl/


