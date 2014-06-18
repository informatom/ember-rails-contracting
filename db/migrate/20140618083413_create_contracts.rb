class CreateContracts < ActiveRecord::Migration
  def change
    create_table :contracts do |t|
      t.integer :term
      t.date :startdate

      t.timestamps
    end
  end
end
