#!/bin/bash
#
# row
#
# A script that works within loco (which see).
#
# Invoke as !command `row n`<Enter>.
#
# Matches line number from ${outfile} (which is a temp file created
# by loco in "$HOME"/tmp/loco.$$) with argument $1 and returns the path on
# that line.  Need to handle paths with spaces in the names.
#
# Need to test $1 for numbers only (and maybe range of lines in ${outfile}).

awk -F"\t+" '$1 == '$1' {  print $2  } ' "${outfile}"
