# Data Examples - Parent-Child #

* Docs are stored, indexed, and searched individually - children are associated with a parent in the same index
```
POST http://localhost:9200/orders/order/123
{
	"id": "123",
	"placedOn": "2018-01-01T13:35:03.034Z",
	"amount": 12.45
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
