# App Side Joins #

* Docs stored, indexed, and searched individually - application joins the docs
* Fetch the order by id
```
GET http://localhost:9200/orders/order/1
{
	"id": "1",
	"placedOn": "2016-10-17T13:03:30.830Z",
	"customerId": "123"
}
```
* Fetch the customer by customer id from the order document
```
GET http://localhost:9200/customers/customer/123
{
	"id": "123",
	"firstName": "John",
	"lastName": "Smith"
}
```