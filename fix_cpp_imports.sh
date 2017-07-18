#!/bin/bash
for f in `grep -rl '#include "thrift_types/' --include=*.{cpp,h} $1`; do
  echo "fixing includes for " $f
  perl -pi -e 's/#include "thrift_types\//#include "/g' $f
  perl -pi -e 's/#include "peripheral_interfaces\//#include "/g' $f
done
