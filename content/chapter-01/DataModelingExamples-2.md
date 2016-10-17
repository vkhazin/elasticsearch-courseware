# Data Examples - App Side Joins #

* Docs stored, indexed, and searched individually - application joins the docs
```
POST http://localhost:9200/ordering/orders/7f18a67b-9ad8-4c35-83d4-0144503b8c0c
{
	"id": "7f18a67b-9ad8-4c35-83d4-0144503b8c0c",
	"placedOn": "2016-10-17T13:03:30.830Z",
	"customerId": "32736b96-a188-41ad-bf00-ee8919ffd3bb"
}
```
```
POST http://localhost:9200/ordering/customers/32736b96-a188-41ad-bf00-ee8919ffd3bb
{
	"id": "32736b96-a188-41ad-bf00-ee8919ffd3bb",
	"firstName": "John",
	"lastName": "Smith"
}
```