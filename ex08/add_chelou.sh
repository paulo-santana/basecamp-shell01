#!/bin/sh
SUM_OPERATION=$(echo $FT_NBR1 + $FT_NBR2 | tr \'\\\\\"\?\!mrdoc "0123401234")

RESULT=$(echo "ibase=5;obase=D;$SUM_OPERATION" | bc )

CONVERTED_RESULT=$(echo "$RESULT" | tr '0123456789ABC' 'gtaio luSnemf')
echo $CONVERTED_RESULT
