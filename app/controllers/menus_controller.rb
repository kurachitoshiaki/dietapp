class MenusController < ApplicationController

    def new
        @menu = Menu.new
    end
  
    def create
        @menu = Menu.create(menu_params)
        if @menu.save
        redirect_to root_path
        else
        redirect_back(fallback_location: menu_new)
        end
    end

    def edit
        @menu = Menu.find_by(params[:id])
    end
    
    private

    def menu_params
        params.require(:menu).permit(:toraining_name,:total_met,:total_time,:total_kcal)
    end
end
