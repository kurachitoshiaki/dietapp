class TrainingsController < ApplicationController

    def new
        @menu = Menu.find(params[:menu_id])
        @training = Training.new
    end
  
    def create
        @training = Training.create(training_params)
        if @training.save
        redirect_to root_path
        else
        redirect_back(fallback_location: training_menu.id_training_new_path)
        end
    end

    private

    def training_params
        params.require(:training).permit(:name,:met,:time,:kcal).merge(menu_id: params[:menu_id])
    end
end
