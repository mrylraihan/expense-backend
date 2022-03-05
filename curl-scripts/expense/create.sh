#!/bin/bash

API="http://localhost:4741"
URL_PATH="/expenses"

curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Bearer ${TOKEN}" \
  --data '{
    "expense": {
      "title": "'"${TITLE}"'",
      "amount": "'"${AMOUNT}"'",
      "date":"'"${DATE}"'"
    }
  }'

echo
