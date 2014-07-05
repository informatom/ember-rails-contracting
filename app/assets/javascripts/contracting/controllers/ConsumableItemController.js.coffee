Contracting.ConsumableItemController = Ember.ObjectController.extend
  actions:
    delete: ->
      consumableItem = this.get('model')
      consumableItem.get('contractItem').then (contractItem) ->
        contractItem.get('consumableItems').removeObject(consumableItem)
      consumableItem.destroyRecord().then ->
        transitionToRoute 'contractItem'

    save: ->
      consumableItem = this.get('model')
      consumableItem.save()