class ConsumableItemSerializer < ActiveModel::Serializer
  embed :ids

  attributes :id, :contract_type, :position, :product_number, :product_line,
             :description_de, :description_en, :amount, :yield, :wholesale_price,
             :term, :consumption1, :consumption2, :consumption3, :consumption4,
             :consumption5, :consumption6, :balance6

  has_one :contract_item
end
