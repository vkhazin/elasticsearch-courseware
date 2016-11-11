# Tile Map #

* Possibly the most interesting visualization
* Requires mappings to be configured with geo_point type
* For previously populate log data cannot modify mapping for coordinates
* We will have to delete the indices created, re-create indices with mapping, re-populate data
* Shell script prepared for you <a href="../../examples/data-sets/geoMappings.sh">right click and save</a>
* Download and run the script (chmod +x maybe required) or copy-paste commands into terminal
* Go back to Visualize tab and select 'Tile map'
* Here it is a bit tricky - may need to go back to settings and refresh the fields
* Select 'Geo Coordinates' and select 'geo.coordinates' field
* Select 'green arrow' on top to apply changes and explore zoom in/out
* Switch to advanced options and check-out <a hrf="https://en.wikipedia.org/wiki/Web_Map_Service" target="_blank">wms</a>
* There are <a href="https://www.elastic.co/elastic-tile-service" target="_blank">terms of service</> for the tile service apparently separate from the elastic search product