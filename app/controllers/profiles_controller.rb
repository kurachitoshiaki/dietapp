class ProfilesController < ApplicationController
  before_action :authenticate_user!,:set_profile,only:[:show,:edit,:update]

    def index
      @profile = Profile.find_by(current_user[:user_id])
    end

    def show
    end

    def new
      @profile = Profile.new
    end

    def create
        @profile = current_user.build_profile(profile_params)
        binding.pry
        if @profile.save
          redirect_to root_path
        else
          redirect_back(fallback_location: new_profile_path)
        end
    end

    def edit
    end

    def update  
        if @profile.update(profile_params)
          redirect_to root_path
        else
          render :edit
        end
    end

    private

    def profile_params
      params.require(:profile).permit(:new_height, :new_weight, :sex, :age, :new_goal)
    end

    def set_profile
      @profile = Profile.find(params[:id])
    end
end


