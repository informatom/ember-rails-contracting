Contracting.Router.map ->

  @resource "contracts",
    path: "/", ->
      @resource "contract",
        path: "/contract/:contract_id", ->
          @resource "contractItems",
            path: "/items", ->
              @resource "contractItem",
                path: "/item/:contractItem_id", ->
                  @resource "consumableItems",
                    path: "/consumableitems"
  return