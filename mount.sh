#!/bin/bash

if [ "${IP}" != "**None**" ] && [ "${SOURCE}" != "**None**" ] && [ "${TARGET}" != "**None**" ] ; then

    service rpcbind start

    mkdir -p "${TARGET}"

    if [ "${OPT}" != "**None**" ]; then
        mount -t nfs -o ${OPT} ${IP}:${SOURCE} ${TARGET}
    else
        mount -t nfs ${IP}:${SOURCE} ${TARGET}
    fi
fi

/bin/bash
