Contracting.ContractItemController = Ember.ObjectController.extend
  actions:
    deleteConsumable: (item) ->
      consumableItem = item
      consumableItem.deleteRecord()
      consumableItem.save()
      return