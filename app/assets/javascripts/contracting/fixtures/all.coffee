Contracting.Contract.FIXTURES = [
  {
    id: 1
    term: 12
    createdAt: new Date(2012, 6, 2, 12, 1, 0)
    updatedAt: new Date(2013, 6, 3, 13, 2, 0)
    contractItems: [
      1
      2
    ]
  }
  {
    id: 2
    term: 15
    createdAt: new Date(2012, 6, 5, 12, 1, 0)
    updatedAt: new Date(2013, 6, 6, 13, 2, 0)
  }
]

Contracting.ContractItem.FIXTURES = [
  {
    id: 1
    position: 1
    term: 12
    productNumber: "AB1"
    descriptionDe: "Produkt AB1"
    descriptionEn: "Product AB1"
    amount: 2
    unit: "Stk"
    volumeBW: 2000
    volumeColor: 2000
    marge: 15
    vat: 20
    discountAbs: 27
    monitoringRate: 5
    createdAt: new Date(2014, 6, 7, 12, 0, 0)
    updatedAt: new Date(2014, 6, 8, 13, 0, 0)
    contract: 1
    consumableItems: [
      1
      2
    ]
  }
  {
    id: 2
    position: 2
    term: 11
    productNumber: "CD1"
    descriptionDe: "Produkt CD1"
    descriptionEn: "Product CD1"
    amount: 3
    unit: "Stk"
    volumeBW: 3500
    volumeColor: 2000
    marge: 15
    vat: 20
    discountAbs: 23
    monitoringRate: 5
    createdAt: new Date(2014, 6, 9, 12, 0, 0)
    updatedAt: new Date(2014, 6, 10, 13, 0, 0)
    contract: 1
  }
]

Contracting.ConsumableItem.FIXTURES = [
  {
    id: 1
    position: 1
    contractItem: 1
    contractType: "Haupt"
    productNumber: "CE340A"
    productLine: "M775z"
    descriptionDe: "Toner Schwarz"
    descriptionEn: ""
    yield: 13500
    wholesalePrice: 32.07
    term: 60
    consumption1: 0
    consumption2: 0
    consumption3: 0
    consumption4: 0
    consumption5: 0
    consumption6: 0
  }
  {
    id: 2
    position: 2
    contractItem: 1
    contractType: "Haupt"
    productNumber: "CE340B"
    productLine: "M775z"
    descriptionDe: "Toner Cyan"
    descriptionEn: ""
    yield: 16.000
    wholesalePrice: 201.71
    term: 60
    consumption1: 0
    consumption2: 0
    consumption3: 0
    consumption4: 0
    consumption5: 0
    consumption6: 0
  }
]