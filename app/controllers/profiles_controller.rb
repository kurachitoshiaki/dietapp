class ProfilesController < ApplicationController

    def index
        @profile = Profile.find(1)
    end

    def new
        @profile = Profile.new
    end

    def create
        @profile = Profile.new(profile_params)
    
        if @profile.save
          flash[:notice] = 'プロフィールを保存しました。'
          redirect_to root_url
        else
          flash[:alert] = 'プロフィールの保存に失敗しました。'
          redirect_back(fallback_location: new_profile_path)
        end
      end

    def edit
        @profile = Profile.find(params[:id])
    end

    def update
        @profile = Profile.find(params[:id])
    
        if @profile.update(profile_params)
          flash[:notice] = '正常に更新されました。'
          redirect_to root_url
        else
          flash[:alert] = '正常に更新されませんでした。'
          render :edit
        end
    end

    private

    def profile_params
      params.require(:profile).permit(:height, :weight, :sex, :age, :goal_weight)
    end

end


