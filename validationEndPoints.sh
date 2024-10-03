#!/bin/bash

#correct validation post method
URL="http://localhost:8000/items/"

JSON_DATA='[
   {
    "id": 0,
    "Date": "2024-10-03",
    "AveragePrice": 0,
    "Total_Volume": 0,
    "plu_4046": 0,
    "plu_4225": 0,
    "plu_4770": 0,
    "Type": "organic",
    "year": 0,
    "region": "string"
  }
]'

curl -X POST $URL \
     -H "Content-Type: application/json" \
     -d "$JSON_DATA"


#wrong validation get method
JSON_DATA2='[
   {
    "id": 0,
    "Date": "2024-10-03",
    "AveragePrice": 0,
    "Total_Volume": 0,
    "plu_4046": 0,
    "plu_4225": 0,
    "plu_4770": 0,
    "Type": "organic"
    "region": "string"
  }
]'

curl -X POST $URL \
     -H "Content-Type: application/json" \
     -d "$JSON_DATA"

#correct validation get method
curl -X GET "http://localhost:8000/avocado/Albany?limit=2&offset=0"

#wrong validation get method
curl -X GET "http://localhost:8000/avocado/envighetto?limit=50&offset=0"