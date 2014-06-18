class ContractItemsController < ApplicationController

  def index
    @contract_items = ContractItem.all
    render json: @contract_items
  end

  def show
    @contract_item = ContractItem.find(params[:id])
    render json: @contract_item
  end
end