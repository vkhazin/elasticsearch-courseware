# Type #

* Type is a mechanism to store different data in the same index
* Types help reducing number of indices for previously discussed performance reasons
* Searching across types within index and between shards adds no overhead
* Lucene implications - field that exists in one type will consume resources in other types
* Fields across types in an index must use consistent data types, e.g. string or number, not string and number
* Score for search results calculated at the index level
* Mapping for document's properties are defined at the type level
* Search and aggregation can be executed at type, index, alias, multi-index, or cluster levels