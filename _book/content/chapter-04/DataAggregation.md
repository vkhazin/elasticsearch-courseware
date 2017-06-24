# Data Aggregation #

* Main entity includes or aggregates related data in it
* Directors, crew, producers, images, and etc... How to index it all?
* Example of movie data:
```
{
  "AssetId" : "86c1bba8-d18f-4bbc-9cb4-a90a4220f59c",
  "Title" : "My First Mister",
  "ShortSynopsis" : "Desperate to escape the world of her infuriatingly cheery mother and mindless classmates, punk-rebel Jennifer impulsively applies for a job at Randall's conservative clothing store where an unlikely friendship blooms.",
  "RunTimeSec" : 6552,
  "StarRating" : 4,
  "AvailableDate" : "2016-03-01T08:00:00",
  "ExpirationDate" : "2018-02-27T09:00:00",
  "GeoRestriction" : "Canada Only",
  "EndCreditsTimeMarkerSec" : 6285,
  "Directors" : [ "Christine Lahti" ],
  "Starring" : [ {
      "CastCrewName" : "Leelee Sobieski",
      "CastCrewRole" : "Cast",
      "Weight" : 100,
      "Order" : 0
    }, {
      "CastCrewName" : "Albert Brooks",
      "CastCrewRole" : "Cast",
      "Weight" : 99,
      "Order" : 1
    }, {
      "CastCrewName" : "Mary Kay Place",
      "CastCrewRole" : "Cast",
      "Weight" : 98,
      "Order" : 2
    }
  ]
}
``` 