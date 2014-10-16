class WelcomeController < ApplicationController

  def index


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
