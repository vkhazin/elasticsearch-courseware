# Data Examples - Parent-Child #

* Docs are stored, indexed, and searched individually - children are associated with parent
```
POST http://localhost:9200/ordering/customers/123
{
	"id": "123",
	"firstName": "John",
	"lastName": "Smith"
}
```
```
POST http://localhost:9200/ordering/orders/1?parent=123
{
	"id": "1",
	"placedOn": "2016-10-17T13:03:30.830Z"
}
```
* <a style="color:red">Important</a>: index mappings must be defined before hand! Discussed later...
