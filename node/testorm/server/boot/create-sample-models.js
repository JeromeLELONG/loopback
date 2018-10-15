'use strict';

module.exports = function(app) {
  app.dataSources.mysqldb.automigrate('customer', function(err) {
    if (err) throw err;

    app.models.customer.create([{
      firstname: 'Bel Cafe',
      lastname: 'Vancouver',
    }, {
      firstname: 'Three Bees Coffee House',
      lastname: 'San Mateo',
    }, {
      firstname: 'Caffe Artigiano',
      lastname: 'Vancouver',
    }], function(err, customers) {
      if (err) throw err;

      console.log('Models created: \n', customers);
    });
  });
};
