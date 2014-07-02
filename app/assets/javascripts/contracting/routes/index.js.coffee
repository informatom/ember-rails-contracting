Contracting.IndexRoute = Ember.Route.extend
  beforeModel: ->
    @transitionTo "contracts"