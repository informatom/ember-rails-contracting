class ConsumableItemsController < ApplicationController

  def index
    @consumable_items = ConsumableItem.all
    render json: @consumable_items
  end

  def show
    @consumable_item = ConsumableItem.find(params[:id])
    render json: @consumable_item
  end
end
