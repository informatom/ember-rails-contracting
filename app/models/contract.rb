class Contract < ActiveRecord::Base
  has_many :contract_items
  attr_accessible :term, :startdate, :created_at, :updated_at
end
