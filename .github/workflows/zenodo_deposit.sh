#!/bin/bash

# From https://git.fmrib.ox.ac.uk/fsl/fsleyes/fsleyes/-/blob/master/.ci/zenodo_deposit.sh

tmp=`dirname $0`
pushd $tmp > /dev/null
thisdir=`pwd`
popd > /dev/null

zenodo_url=$1
zenodo_tkn=$2
zenodo_depid=$3

version=`git tag`
upfile=`pwd`/nifti_mrs_specification_*.pdf
metafile=`pwd`/.github/workflows/zenodo_meta.json.jinja2
date=`date +"%Y-%m-%d"`

pip install --retries 10 requests jinja2

python "$thisdir"/zenodo.py \
       "$zenodo_url" \
       "$zenodo_tkn" \
       "$zenodo_depid" \
       $upfile \
       "$metafile" \
       "$version" \
       "$date"
