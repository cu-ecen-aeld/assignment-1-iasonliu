#!/bin/sh

FIND_DIR=$1
SEARCH_STR=$2

FILE_COUNT=$(find "${FIND_DIR}" -type f | wc -l)

MATCHING_LINES=$(grep -r "${SEARCH_STR}" "${FIND_DIR}" | wc -l)

echo "The number of files are ${FILE_COUNT} and the number of matching lines are ${MATCHING_LINES}"
