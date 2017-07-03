# Dynamic Templates #

* In-between option between dynamic mapping and strict mapping
* Example:
```
"mapping": {
    "audit-events": {
        "dynamic_templates": [
            {
                "id": {
                    "match":   "*ZZIDZZ",
                    "mapping": {
                        "type": "string",
                        "index": "not_analyzed"
                    }
                }
            },
   ...
}
```
* <a href="https://www.elastic.co/guide/en/elasticsearch/reference/current/dynamic-templates.html" target="_blank">Detailed Documentation</a>
