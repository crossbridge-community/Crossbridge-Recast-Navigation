#!/bin/sh

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
FLASCC="/cygdrive/c/Crossbridge_1.0.1/sdk"
CFLAGS="-Werror -Wno-write-strings -Wno-trigraphs -jvmopt=-Xmx1G -O4"
RECAST_SOURCE_PATH="${DIR}/../recastnavigation/Recast/Source"
RECAST_INCLUDE_PATH="${DIR}/../recastnavigation/Recast/Include"

echo Compiling...
"${FLASCC}/usr/bin/g++" ${CFLAGS} -I${RECAST_INCLUDE_PATH} ${RECAST_SOURCE_PATH}/*.cpp "${DIR}/as3_api.cpp" "${DIR}/main.cpp" -emit-swc=recastnavigation.internal_api -o "${DIR}/as3_internal_api.swc"