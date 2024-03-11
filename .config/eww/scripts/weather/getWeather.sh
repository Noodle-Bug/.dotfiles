curl \
	-H 'User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:89.0) Gecko/20100101 Firefox/89.0' \
	'https://api.weather.gov/gridpoints/AKQ/37,93/forecast?units=us' > weather.json

cat weather.json | jq '.properties.periods[0].temperature'
