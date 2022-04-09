#!/bin/sh

for TOKEN in "$@"; do
  § echo "$TOKEN"
done
for TOKEN in $*; do
  § echo "$TOKEN"
done

# Test: ./special_parameters.sh Rakesh Panigrahi 26 Years Old
# Test: ./special_parameters.sh "Rakesh Panigrahi 26 Years Old"
# Output
: '

'
