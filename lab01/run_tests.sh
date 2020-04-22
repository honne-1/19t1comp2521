#!/bin/sh

for t in 01 02 03 04 05 06 07 08 09 10 11 12 13 14 15 16 17 18 19 20
do
	echo === Test $t ===
	sort -n < tests/$t > tests/$t.expected
	./useIntList < tests/$t > tests/$t.observed
	diff tests/$t.expected tests/$t.observed
done
rm tests/*.expected tests/*.observed
