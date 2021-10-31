class AccessoriesController < ApplicationController

    def index
        render json: Accessory.all, status: :ok
    end
    
    def show
        accessory = Accessory.find_by(id: params[:id])
        if accessory
            render json: accessory, status: :ok
        else
            render json: {errors: "accessory not found"}, status: :not_found
        end
    end
end
