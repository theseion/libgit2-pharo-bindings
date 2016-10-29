#!/bin/bash 

set -ex

baseline=LibGit
packages_dir=.
test="$baseline.*"

# add a default version ()
if [ -z $PHARO_VERSION ]; then
	PHARO_VERSION=50
fi

# download pharo
wget --quiet -O - get.pharo.org/$PHARO_VERSION+vm | bash
# install project
./pharo Pharo.image eval --save "
Metacello new 
	baseline: '$baseline';
	repository: 'filetree://$packages_dir';
	load.
"
# execute tests
./pharo Pharo.image test --no-xterm --fail-on-failure "$test" 2>&1
