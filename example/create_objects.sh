#!/usr/bin/env bash

pushd `dirname $0` > /dev/null
SCRIPTPATH=`pwd -P`
popd > /dev/null
SCRIPTFILE=`basename $0`

CONFIG_PATH=${SCRIPTPATH}/my-config
for CONFIG_FILE in ${CONFIG_PATH}/*.yaml
do
	echo "create object: ${CONFIG_FILE}"
	$SCRIPTPATH/primary-001/egctl.sh object create -f ${CONFIG_FILE}
done
