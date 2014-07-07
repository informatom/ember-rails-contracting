class ContractItemsController < ApplicationController
  respond_to :json

  def index
    respond_with ContractItem.all
  end

  def show
    respond_with ContractItem.find(params[:id])
  end

  def create
    respond_with ContractItem.create(params[:contract_item])
  end

  def update
    respond_with ContractItem.find(params[:id]).update_attributes(params[:contract_item])
  end

  def destroy
    respond_with ContractItem.find(params[:id]).delete
  end
end