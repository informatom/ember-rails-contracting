# for more details see: http://emberjs.com/guides/models/defining-models/

Contracting.Contract = DS.Model.extend
  term: DS.attr 'number'
  startdate: DS.attr 'date'
