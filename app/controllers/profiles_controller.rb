class ProfilesController < ApplicationController

    def new
        # form where a user can fill out their own profile.
        @model = Model.find( params[:model_id] )
        @profile = @model.build_profile
    end

end