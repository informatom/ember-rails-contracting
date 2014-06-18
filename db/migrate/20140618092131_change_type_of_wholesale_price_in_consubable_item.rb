class ChangeTypeOfWholesalePriceInConsubableItem < ActiveRecord::Migration
  def change
   change_column :consumable_items, :wholesale_price, :number
  end
end
