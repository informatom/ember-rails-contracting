Contracting.ConsumableItemController = Ember.ObjectController.extend({
  actions: {
    delete: function() {
      var consumableItem = this.get('model');
      var contractItem = consumableItem.get('contractItem')

      contractItem.then(function(contractItem) {
        contractItem.get('consumableItems').removeObject(consumableItem);
      });

      consumableItem.destroyRecord()
      this.transitionToRoute('contractItem', contractItem);
    },

    save: function() {
      var consumableItem = this.get('model');
      consumableItem.save();
    }
  }
});