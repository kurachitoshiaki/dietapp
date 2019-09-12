class TrainingsController < ApplicationController
    def new
        @profile = Profile.find(params[:profile_id])
        @training = Training.new
    end
  
    def create
        @training = Training.create(training_params)
        if @training.save
        redirect_to root_path
        else
        redirect_back(fallback_location: training_profile.id_training_new_path)
        end
    end
    private
    def training_params
        params.require(:training).permit(:name,:MET,:time,:kcal).merge(profile_id: params[:profile_id])
    end
end
