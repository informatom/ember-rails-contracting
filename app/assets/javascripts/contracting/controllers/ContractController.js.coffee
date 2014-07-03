Contracting.ContractController = Ember.ObjectController.extend
  actions:
    createContractItem: ->
      contract = @get('model')
      if isFinite(contract.get('maxposition'))
        position = contract.get('maxposition') + 10
      else
        position = 10
      contractItem = @store.createRecord 'contractItem',
        position: position
        contract: @get('model')
      contractItem.save().then ->
        contract.get('contractItems').pushObject(contractitem)