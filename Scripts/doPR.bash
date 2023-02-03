#!/bin/bash
# Script to invoke work for the Programming Renaissance organization
# * cd to Programming Renaissance directory
# * Activvate the Python 3.11 virtual environment
# * Invoke Visual Studio Code in the Programming Renaissance workspace

export PROLDIR
PROLDIR="$(pwd)" # Save the old user directory
# We need to cd to the Programming Renaissance directory if we are not there
if [[ "$(basename pwd)" != "$PRN" ]]; then 
  cd "${WP/PRN}" || return 1
fi

# Activate the Python virtual environment
# This code assumes the the VSC activation script has been refactored to
# package the activation code in a function