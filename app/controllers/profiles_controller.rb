class ProfilesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_profile,only:[:show,:edit,:update]

   def index
    if Profile.find_by(current_user[:user_id])
      @profile = Profile.find_by(current_user[:user_id])
      @weights = Weight.includes(current_user[:profile_id]).order("created_at ASC").last(1)
      @menu = Menu.find_by(params[:id])
    else
      redirect_to action: 'new'
    end
   end 

    def show
    end

    def new
      @profile = Profile.new
    end

    def create
        @profile = current_user.build_profile(profile_params)
        if @profile.save
          redirect_to root_path
        else
          redirect_back(fallback_location: new_profile_path)
        end
      end
      
      def edit
        @menu = Menu.find_by(params[:id])
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
      params.require(:profile).permit(:image, :new_height, :new_weight, :sex, :age, :new_goal)
    end

    def set_profile
      @profile = Profile.find(params[:id])
    end
end


