Contracting.ConsumableItemsRoute = Ember.Route.extend
  model: ->
    @store.find 'consumableItem'
