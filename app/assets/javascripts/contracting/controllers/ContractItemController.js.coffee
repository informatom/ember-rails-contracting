Contracting.ContractItemController = Ember.ObjectController.extend
  actions:
    deleteConsumable: (consumableItem) ->
      consumableItem.deleteRecord().save()

    create: ->
      consumableItem = @store.createRecord 'consumableItem',
        position: 3
        contractType: "test"
        contractItem: @get('model')
      consumableItem.save()