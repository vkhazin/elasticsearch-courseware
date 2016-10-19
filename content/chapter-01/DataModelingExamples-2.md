# Data Examples - App Side Joins #

* Docs stored, indexed, and searched individually - application joins the docs
```
POST http://localhost:9200/ordering/orders/1
{
	"id": "1",
	"placedOn": "2016-10-17T13:03:30.830Z",
	"customerId": "123"
}
```
```
POST http://localhost:9200/ordering/customers/123
{
	"id": "123",
	"firstName": "John",
	"lastName": "Smith"
}
```