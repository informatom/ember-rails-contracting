class ContractItemsController < ApplicationController
  respond_to :json

  def index
    respond_with ContractItem.all
  end

  def show
    respond_with ContractItem.find(params[:id])
  end
end