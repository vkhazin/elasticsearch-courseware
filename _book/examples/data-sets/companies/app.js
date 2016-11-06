const lineReader = new (require('line-by-line'))('./data/in/companies.json');
const lineWriter = require('fs').createWriteStream('./data/out/companies.txt', {});

lineReader.on('error', function (err) {
  console.error(err);
});

lineReader.on('line', function (line) {
  var data = JSON.parse(line);
  const id = data._id.$oid;
  delete data._id;
  data.id = id;
  
  const header = JSON.stringify({
    index:  {
       _index: 'sample-data',
       _type: 'companies',
       _id: id
     }
    });
  data = JSON.stringify(data);

  lineWriter.write(header);
  lineWriter.write(data)
  console.log(header);
});

lineReader.on('end', function () {
 console.log('Finished at: ' + new Date().toISOString());
});
