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
