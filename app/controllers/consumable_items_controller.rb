class ConsumableItemsController < ApplicationController

  def index
    @consumable_items = ConsumableItem.all
    render json: @consumable_items
  end

  def show
    @consumable_item = ConsumableItem.find(params[:id])
    render json: @consumable_item
  end

  def create
    @consumable_item = ConsumableItem.new(params[:consumable_item]).save
    render json: @consumable_item
  end

  def destroy
    @consumable_item = ConsumableItem.find(params[:id])
    @consumable_item.delete
    render json: nil
  end
end