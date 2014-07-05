Contracting.ContractItemController = Ember.ObjectController.extend
  actions:
    delete: ->
      contractItem = this.get('model')
      contractItem.get('consumableItems').forEach (consumableItem) ->
        consumableItem.destroyRecord()

      contractItem.get('contract').then (contract) ->
        contract.get('contractItems').removeObject(contractItem)

      contractItem.destroyRecord().then ->
        @transitionToRoute 'contract'

    createConsumable: ->
      contractItem = @get('model')
      if isFinite(contractItem.get('maxposition'))
        position = contractItem.get('maxposition') + 10
      else
        position = 10

      consumableItem = @store.createRecord 'consumableItem',
        position: position
        contractItem: @get('model')

      consumableItem.save().then ->
        contractItem.get('consumableItems').pushObject(consumableItem)