class ModelsController < ApplicationController
    
    def show
        # grab id of current user
        @model = Model.find(params[:id])
    end
end