#!/bin/bash
if [ -z ${FCNC_DIR+x} ] ; then
	SOURCE="${BASH_SOURCE[0]}"
	while [ -h "$SOURCE" ]; do # resolve $SOURCE until the file is no longer a symlink
	  DIR="$( cd -P "$( dirname "$SOURCE" )" >/dev/null 2>&1 && pwd )"
	  SOURCE="$(readlink "$SOURCE")"
	  [[ $SOURCE != /* ]] && SOURCE="$DIR/$SOURCE" # if $SOURCE was a relative symlink, we need to resolve it relative to the path where the symlink file was located
	done
	export FCNC_DIR="$( cd -P "$( dirname "$SOURCE" )" >/dev/null 2>&1 && pwd )"
	export TOOL_DIR=$FCNC_DIR/tools
fi
source $FCNC_DIR/PlotTools/env.sh
source $FCNC_DIR/FCNCAnalysis/env.sh

alias tthcd='cd $ttH_fakes_DIR'
alias tthmake='cd $ttH_fakes_DIR/build; make; cd -'
alias plotcd='cd $PLOT_LIB_DIR'
alias plotmake='cd $PLOT_LIB_DIR/build; make; cd -'