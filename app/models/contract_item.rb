class ContractItem < ActiveRecord::Base
  has_many :consumable_items
  belongs_to :contract
end
