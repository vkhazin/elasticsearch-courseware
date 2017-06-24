# Not Analyzed & Multi-Fields #

* Lucene and hence ElasticSearch break strings into terms using <a href="https://www.elastic.co/guide/en/elasticsearch/reference/current/analysis-tokenizers.html" target="_blank">built-in</a> or custom tokenizers 
* Some strings don't make sense to tokenize e.g. <a href="https://www.google.ca/webhp?sourceid=chrome-instant&ion=1&espv=2&ie=UTF-8#newwindow=1&q=define:+guid" target="_blank">uuid or guid</a> often used as equivalent of a primary key and/or unique identifier
* not_analyzed: ElasticSearch mapping option to suppress tokenization:
```
curl -XPUT 'localhost:9200/ordering/order/_mapping?pretty=true' -d '
{
   "order": {
      "properties": {
         "id": {
            "type": "text",
            "index": "not_analyzed"
         }
      }
   }
}'
```
* What you think difference will be searching or aggregating tokenized uuid/guid vs. non-tokenized uuid/guid property?
* What if I need both tokenized and non-tokenized option for the same field?
* <a href="https://www.elastic.co/guide/en/elasticsearch/reference/current/multi-fields.html" target="_blank">Multi-Fields</a> Mapping allows double indexing the same data:
```
curl -XPUT 'localhost:9200/ordering/order/_mapping?pretty=true' -d '
{  
   "order":{  
      "properties": {  
         "streetName": {
            "type":"text",
            "fields": {  
               "notparsed": {  
                  "type":"keyword",
                  "index":"not_analyzed"
               }
            }
         }
      }
   }
}'
```
