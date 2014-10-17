class WelcomeController < ApplicationController

  def index


    # @item = FoodItem.all.sample
    @itemAsian = FoodItem.where(cuisine: "Asian").sample
    @itemWestern = FoodItem.where(cuisine: "Western").sample
    @itemAdventurous = FoodItem.where(cuisine: "Adventurous").sample

    if params[:admin] == "true"

      current_time = Time.now
      # 45 minutes in seconds
      @mealtime = current_time + (45*60)

      render 'index'

    else
      render 'under_construction'
    end



  end
end
