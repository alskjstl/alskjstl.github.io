#!/bin/bash
export DEST="./.exvim.git"
export TOOLS="/Users/yangxiaowei/.vim/tools/"
export TMP="${DEST}/_symbols"
export TARGET="${DEST}/symbols"
sh ${TOOLS}/shell/bash/update-symbols.sh
