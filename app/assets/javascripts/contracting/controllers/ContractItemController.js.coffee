Contracting.ContractItemController = Ember.ObjectController.extend
  actions:
    deleteConsumable: (item) ->
      consumableItem = item
      consumableItem.deleteRecord()
      consumableItem.save()

    create: ->
      controller = this
      consumableItem = @store.createRecord 'consumableItem',
        position: 3
        contractItem: @get('model')
      consumableItem.save().then () ->
        controller.get('model').reload()

  cleanItems: (->
    @get("consumableItems").filter (item, index) ->
      not (item.get("isDirty"))
  ).property("consumableItems.@each")