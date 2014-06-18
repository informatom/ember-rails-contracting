# for more details see: http://emberjs.com/guides/models/defining-models/

Contracting.ContractItem = DS.Model.extend
  position: DS.attr 'number'
  term: DS.attr 'number'
  startdate: DS.attr 'date'
  productNumber: DS.attr 'string'
  descriptionDe: DS.attr 'string'
  descriptionEn: DS.attr 'string'
  amount: DS.attr 'number'
  unit: DS.attr 'string'
  volumeBw: DS.attr 'number'
  volumeColor: DS.attr 'number'
  marge: DS.attr 'number'
  vat: DS.attr 'number'
  discountAbs: DS.attr 'number'
  monitoringRate: DS.attr 'number'
