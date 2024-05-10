#!/usr/bin/bash

source /opt/conda/.bashrc
source /config/env-variables

micromamba activate
/opt/conda/bin/geographic_gatherer.py -p ${PUBLISH_PORT} -n false -i ${ADDRESSES} /config/geographic_gatherer.ini
