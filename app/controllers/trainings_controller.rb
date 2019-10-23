class TrainingsController < ApplicationController
    def create
        @training = Training.create(training_params)
        if @training.save
        redirect_to root_path
        else
        redirect_back(fallback_location: menus_menu.id_trainings_new_path)
        end
    end
    
    def edit
    end

    private

    def training_params
        params.require(:training).permit(:name,:met,:time,:kcal).merge(menu_id: params[:menu_id])
    end
end
