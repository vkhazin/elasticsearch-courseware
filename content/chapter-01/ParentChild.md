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
PUT orders/order/4?routing=123&refresh=true
{
  "text": "This is another answer",
  "customer2customer": {
    "name": "customer",
    "parent": "123"
  }
}
```
* <a style="color:red">Important</a>: index mappings must be defined before hand! Discussed later...
