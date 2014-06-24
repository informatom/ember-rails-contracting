Contracting.ContractsRoute = Ember.Route.extend
  model: ->
    @store.find "contract"