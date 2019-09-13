class MenusController < ApplicationController

    def new
        @trainings = Training.find(params[:training_id])
        @menus = Menu.new
    end
  
    def create
        @weight = Weight.create(weight_params)
        if @weight.save
        redirect_to root_path
        else
        redirect_back(fallback_location: weight_profile.id_weight_new_path)
        end
    end
    
    private

    def weight_params
        params.require(:weight).permit(:weight).merge(profile_id: params[:profile_id])
    end
end
