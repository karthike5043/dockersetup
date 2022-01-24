echo "`curl -L -o traffic-registrations.json 'https://www.vegvesen.no/trafikkdata/api/' \
  -X POST \
  -H 'content-type: application/json' \
  --data '{ "query": "{ trafficRegistrationPoints(searchQuery: {roadCategoryIds: [E] }) { id name trafficRegistrationType direction { from to } location { county {name} coordinates { latLon { lat lon } } } } }", "variables": null}'`"

echo "Total No of Records is:" "`wc -w traffic-registrations.json`"
