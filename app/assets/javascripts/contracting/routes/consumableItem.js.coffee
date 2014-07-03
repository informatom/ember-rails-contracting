Contracting.ConsumableItemRoute = Ember.Route.extend
  model: (params) ->
    @store.find "consumableItem", params.id