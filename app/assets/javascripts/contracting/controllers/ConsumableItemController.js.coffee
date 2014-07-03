Contracting.ConsumableItemController = Ember.ObjectController.extend
  actions:
    delete: ->
      consumableItem = this.get('model')
      consumableItem.get('contractItem').get('consumableItems').removeObject(consumableItem)
      consumableItem.deleteRecord()
      consumableItem.save()

    saveConsumable: ->
      consumableItem = this.get('model')
      consumableItem.save()