class ProfilesController < ApplicationController
    before_action :authenticate_model!
    before_action :only_current_model

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
    
    def edit
    @model = Model.find( params[:model_id] )
    @profile = @model.profile
    end
    
    def update
    @model = Model.find( params[:model_id] )
    @profile = @model.profile
    if @profile.update_attributes(profile_params)
      flash[:success] = "Profile Updated!"
      redirect_to model_path( params[:model_id] )
    else
      render action: :edit
    end
    end
     
    private
    def profile_params
       params.require(:profile).permit(:first_name, :last_name, :avatar, :job_title, :phone_number, :contact_email, :description) 
    end
    
     def only_current_model
      @model = Model.find( params[:model_id] )
      redirect_to(root_url) unless @model == current_model
     end
end