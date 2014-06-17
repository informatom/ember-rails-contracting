Contracting.Router.map ->

  @resource "contracts"

  @resource "contract",
    path: "/contract/:contract_id"

  @resource "contractItem",
    path: "/contractitem/:contractItem_id"

  return