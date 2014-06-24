Contracting.ContractItemController = Ember.ObjectController.extend
  actions:
    deleteConsumable: (item) ->
      consumableItem = item
      consumableItem.deleteRecord()
      consumableItem.save()
      return

    create: ->
      consumableItem = @store.createRecord 'consumableItem',
        position: 3
        contractItem: @get('model')
      consumableItem.save()
      contractItem.pushObject()
      return