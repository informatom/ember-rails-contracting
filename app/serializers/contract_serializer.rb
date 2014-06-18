class ContractSerializer < ActiveModel::Serializer
  embed :ids, include: true

  attributes :id, :term, :startdate

  has_many :contract_items
end