Contracting.ContractsController = Ember.ArrayController.extend
  sortProperties: ['updatedAt'],
  sortAscending: true,

  actions:
    create: ->
      contract = @store.createRecord("contract")
      contract.save()