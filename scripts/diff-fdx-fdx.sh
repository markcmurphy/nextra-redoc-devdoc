#!/usr/bin/env bash
# THIS DOES NOT WORK YET

####
# This script is used for diffing two FDX specifications.
#
# Pre-requeisites for Usage
# This script assumes you have either of the following two files present:
# - fdx-composite.yaml
# - fdxapi.yaml
####

# # Make sure script throws an error if any step fails
# # More detail: https://gist.github.com/mohanpedala/1e2ff5661761d3abd0385e8223e16425
# set -euxo pipefail

# if ! command -v oasdiff > /dev/null; then
#   >&2 echo "
#   Something went wrong.

#   This script requires oasdiff to be installed.

#   Installation and usage instructions are here:
#   https://github.com/Tufin/oasdiff#install-with-go"
#   exit 1
# fi


# FDXAPI='fdxapi.yaml'
# COMPOSITE='fdx-composite.yaml'

# OLD_SPEC_VERSION=$1
# NEW_SPEC_VERSION=$2
# SRC_PATH=./src/versions/$OLD_SPEC_VERSION
# DIST_PATH=./src/versions/$NEW_SPEC_VERSION

# BASE="$SRC_PATH/$COMPOSITE"
#   echo 'First echo'
# if [ -f "$SRC_PATH/$COMPOSITE" ]; then
#   echo 'file does not exist'
#   BASE="$SRC_PATH/$FDXAPI"
# fi

# # REVISION="$DIST_PATH/$COMPOSITE"
# # if test -f "$DIST_PATH/$COMPOSITE";
# #   then REVISION="$DIST_PATH/$FDXAPI"
# # fi

# # oasdiff -base $BASE -revision $REVISION -exclude-examples -format text > diff-fdx-$OLD_SPEC_VERSION-$NEW_SPEC_VERSION.md