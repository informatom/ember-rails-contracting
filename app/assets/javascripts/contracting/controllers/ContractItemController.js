Contracting.ContractItemController = Ember.ObjectController.extend({
  actions: {
    delete: function() {
      var contractItem = this.get('model');
      var contract = contractItem.get('contract');

      contractItem.get('consumableItems').forEach(function(consumableItem) {
        consumableItem.destroyRecord();
      });
      contract.get('contractItems').removeObject(contractItem);
      contractItem.destroyRecord();
      this.transitionToRoute('contract', contract);
    },

    createConsumable: function() {
      var consumableItem, position, contractItem = this.get('model');

      if (isFinite(contractItem.get('maxposition'))) {
        position = contractItem.get('maxposition') + 10;
      } else {
        position = 10;
      }

      consumableItem = this.store.createRecord('consumableItem', {
        position: position,
        contractItem: this.get('model')
      });

      consumableItem.save().then(function(consumableItem) {
        contractItem.get('consumableItems').pushObject(consumableItem);
      });
    }
  }
});
