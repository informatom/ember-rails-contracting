class CreateConsumableItems < ActiveRecord::Migration
  def change
    create_table :consumable_items do |t|
      t.string :contract_type
      t.integer :position
      t.string :product_number
      t.string :product_line
      t.string :description_de
      t.string :description_en
      t.integer :amount
      t.integer :yield
      t.integer :wholesale_price
      t.integer :term
      t.integer :consumption1
      t.integer :consumption2
      t.integer :consumption3
      t.integer :consumption4
      t.integer :consumption5
      t.integer :consumption6
      t.integer :balance6

      t.timestamps
    end
  end
end
