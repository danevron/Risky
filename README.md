# Linking system

API for linking an input order to all similar orders

## Requirements

- Mac OS X
- Ruby version 2.4.* (may work with lower)

## Installation

Install the project dependencies

    bundle install

## Start the service

To start the Rails API open a terminal window and run:

    bundle exec rails server

## Example request

```
curl -X POST \
  http://localhost:3000/search \
  -H 'Cache-Control: no-cache' \
  -H 'Content-Type: application/json' \
  -d '{
	"order": {
		"customer_id": "customer_id1",
		"browser_ip": "0.0.0.0",
		"shipping_first_name": "dani",
		"shipping_last_name": "evron"
	}
}'
```
