class MenusController < ApplicationController

    def new
        @menu = Menu.new
    end
  
    def create
        @menu = Weight.create(weight_params)
        if @menu.save
        redirect_to root_path
        else
        redirect_back(fallback_location: menu_new)
        end
    end
    
    private

    def weight_params
        params.require(:menu).permit(:total_met,:total_time,:total_kcal)
    end
end
