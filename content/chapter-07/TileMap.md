# Tile Map #

* Possibly the most interesting visualization
* Requires mappings to be configured with geo_point type
* For previously populated log data cannot modify mapping for coordinates
* We will have to delete the indices created, re-create indices with mapping, and to re-populate data
* Shell script prepared for you <a href="../../examples/data-sets/geoMappings.sh">right-click and save</a>
* Or download the script to the sandbox by running following command:
```
curl -o geoMappings.sh https://elasticsearch-courseware-2d.icssolutions.ca/examples/data-sets/geoMappings.sh
```
* ```chmod +x``` will be required to grant execution permission
* Execute the script:
```
./geoMappings.sh
```
* Go back to Visualize tab and select 'Tile map'
* Here it is a bit tricky - may need to go back to settings and refresh the fields
* Select 'Geo Coordinates' and select 'geo.coordinates' field
* Select 'green arrow' on top to apply changes and explore zoom in/out
* Switch to advanced options and check-out <a href="https://en.wikipedia.org/wiki/Web_Map_Service" target="_blank">wms</a>
* There are <a href="https://www.elastic.co/elastic-tile-service" target="_blank">terms of service</a> for the tile service apparently separate from the elastic search product, go figure...