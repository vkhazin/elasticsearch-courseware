# Data Aggregation Cont'd #

* Aggregated data is not likely to be stored in the same shape as it is in a Rdbms
* Rdbms more likely to store data in related tables using foreign key relationship, whether enforced or not
* Aggregating data in ElasticSearch from Rdbms is likely to result in data de-normalization
* Rdbms likely data model:

* Movies  

| AssetId | Title | ShortSynopsis | ... |  
| - | - | - | - |  
| 86c1bba8-d18f-4bbc-9cb4-a90a4220f59c | My First Mister | Desperate to escape the.. | ... |

* Cast Members  

| MemberId | Name | ... |  
| - | - | - |  
| b42e5484-e7e1-4eaf-b9a2-b8f25487533b | Leelee Sobieski | ... |  
| 1290de91-2bc3-4b72-9a0d-6fa0e04b44ab | Albert Brooks | ... |  

* Movie Cast Members  

| AssetId | MemberId | Role |  
| - | - | - |  
| 86c1bba8-d18f-4bbc-9cb4-a90a4220f59c | b42e5484-e7e1-4eaf-b9a2-b8f25487533b | Cast |
| 86c1bba8-d18f-4bbc-9cb4-a90a4220f59c | 1290de91-2bc3-4b72-9a0d-6fa0e04b44ab | Cast |

* Document databases such as Couchbase and MongoDb may store data aggregated neatly already