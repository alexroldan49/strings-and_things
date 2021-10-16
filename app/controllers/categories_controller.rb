class CategoriesController < ApplicationController

    def index
        render json: Category.all
    end
    
    def show
        category = Category.find_by(id: params[:id])
        if category
            render json: category, status: :ok
        else
            render json: {errors: "Category not found"}, status: :not_found
        end
    end
    
end
