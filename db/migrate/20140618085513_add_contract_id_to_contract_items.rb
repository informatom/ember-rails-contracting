class AddContractIdToContractItems < ActiveRecord::Migration
  def change
    add_column :contract_items, :contract_id, :integer
    add_index :contract_items, :contract_id
  end
end
