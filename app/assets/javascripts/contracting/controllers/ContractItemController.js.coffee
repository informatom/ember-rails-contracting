Contracting.ContractItemController = Ember.ObjectController.extend
  actions:
    deleteConsumable: (consumableItem) ->
      consumableItem.deleteRecord()
      consumableItem.save()

    create: ->
      contractItem = @get('model')
      if isFinite(contractItem.get('maxposition'))
        position = contractItem.get('maxposition') + 10
      else
        position = 10
      consumableItem = @store.createRecord 'consumableItem',
        position: position
        contractItem: @get('model')
      consumableItem.save()