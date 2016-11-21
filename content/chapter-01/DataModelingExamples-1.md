# Data Examples #

* Hello World example
```
POST http://localhost:9200/index-name/type-name/document-id {
	"message": "Hello World!"
}
```
* Nested document
```
POST http://localhost:9200/index-name/type-name/document-id {
	"message": "Hello World!",
	"keywords": [
		"cheerful",
		"happy"
	]
}
```
