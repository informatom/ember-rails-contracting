class ConsumableItemsController < ApplicationController
  respond_to :json

  def index
    respond_with ConsumableItem.all
  end

  def show
    respond_with ConsumableItem.find(params[:id])
  end

  def create
    respond_with ConsumableItem.create(params[:consumable_item])
  end

  def update
    respond_with ConsumableItem.find(params[:id]).update_attributes(params[:consumable_item])
  end

  def destroy
    respond_with ConsumableItem.find(params[:id]).delete
  end
end