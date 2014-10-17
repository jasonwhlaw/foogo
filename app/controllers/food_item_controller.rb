class FoodItemController < ApplicationController

  def show

    @id_requested = params[:id]
    @show_item = FoodItem.where(id: @id_requested).map { |item| item.name }
    # @show_item = FoodItem.where(id: @id_requested).pluck('name')
    # @show_item = FoodItem.where(id: @id_requested).pluck('name')
  end


end
