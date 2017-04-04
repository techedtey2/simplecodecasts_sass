class ProfilesController < ApplicationController

    def new
        # form where a user can fill out their own profile.
        @model = Model.find( params[:model_id] )
        @profile = Profile.new
    end
    
    def create
       @model = Model.find(params[:model_id])
    #   bind to user who just filled out form.
       @profile = @model.build_profile(profile_params)
        if @profile.save
           flash[:success] = "Profile updated!"
           redirect_to model_path(params[:model_id])
       else
          render action: :new 
        end
    end
     
    private
    def profile_params
       params.require(:profile).permit(:first_name, :last_name, :avatar, :job_title, :phone_number, :contact_email, :description) 
    end
end