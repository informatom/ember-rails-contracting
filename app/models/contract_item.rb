class ContractItem < ActiveRecord::Base
  has_many :consumable_items
  belongs_to :contract
  attr_accessible :position, :term, :startdate, :product_number, :description_de, :description_en,
                  :amount, :unit, :volume_bw, :volume_color, :marge, :vat, :discount_abs,
                  :monitoring_rate, :created_at, :updated_at, :contract_id
end