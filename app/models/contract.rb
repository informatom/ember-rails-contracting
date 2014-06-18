class Contract < ActiveRecord::Base
  has_many :contract_items
end
