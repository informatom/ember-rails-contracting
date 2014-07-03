class ContractSerializer < ActiveModel::Serializer
  embed :ids

  attributes :id, :term, :startdate

  has_many :contract_items
end