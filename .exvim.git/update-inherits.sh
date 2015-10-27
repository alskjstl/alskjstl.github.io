#!/bin/bash
export DEST="./.exvim.git"
export TOOLS="/Users/yangxiaowei/.vim/tools/"
export TMP="${DEST}/_inherits"
export TARGET="${DEST}/inherits"
sh ${TOOLS}/shell/bash/update-inherits.sh
