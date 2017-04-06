class ModelsController < ApplicationController
    before_action :authenticate_model!

    def index
    @models = Model.includes(:profile)
    end
    
    def show
        # grab id of current user
        @model = Model.find(params[:id])
    end
end