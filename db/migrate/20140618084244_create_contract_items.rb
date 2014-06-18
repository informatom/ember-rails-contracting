class CreateContractItems < ActiveRecord::Migration
  def change
    create_table :contract_items do |t|
      t.integer :position
      t.integer :term
      t.date :startdate
      t.string :product_number
      t.string :description_de
      t.string :description_en
      t.integer :amount
      t.string :unit
      t.integer :volume_bw
      t.integer :volume_color
      t.integer :marge
      t.integer :vat
      t.integer :discount_abs
      t.integer :monitoring_rate

      t.timestamps
    end
  end
end
