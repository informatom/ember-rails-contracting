class AddContractItemIdToConsumableItems < ActiveRecord::Migration
  def change
    add_column :consumable_items, :contract_item_id, :integer
    add_index :consumable_items, :contract_item_id
  end
end
