Contracting.ConsumableItemController = Ember.ObjectController.extend
  actions:
    delete: ->
      consumableItem = @get("model")
      contractItem = consumableItem.get("contractItem")
      contractItem.then (contractItem) ->
        contractItem.get("consumableItems").removeObject consumableItem

      consumableItem.destroyRecord()
      @transitionToRoute "contractItem", contractItem

    save: ->
      consumableItem = @get("model")
      consumableItem.save()